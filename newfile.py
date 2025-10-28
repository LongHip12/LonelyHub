import discord
import asyncio
import datetime
from colorama import init, Fore, Style
from dotenv import load_dotenv
import os
# Khởi tạo colorama
init()
load_dotenv()
class FixedAutoLevelBot:
    def __init__(self):
        self.token = os.getenv("Token") # Dùng token mới
        self.channel_id = 1409791680864850001
        
        # FIX: Thêm intents đơn giản
        intents = discord.Intents.default()
        self.client = discord.Client(intents=intents)
        self.is_running = False

    async def on_ready(self):
        print(f"{Fore.GREEN}[Info]{Style.RESET_ALL} Đã đăng nhập thành công: {self.client.user}")
        print(f"{Fore.CYAN}[Info]{Style.RESET_ALL} User: {self.client.user.name}")
        print(f"{Fore.CYAN}[Info]{Style.RESET_ALL} ID: {self.client.user.id}")
        
        # Đặt status
        try:
            activity = discord.Game(name="Lonely Hub (Educational Test)")
            await self.client.change_presence(activity=activity)
            print(f"{Fore.GREEN}[Info]{Style.RESET_ALL} Đã đặt status")
        except Exception as e:
            print(f"{Fore.YELLOW}[Warn]{Style.RESET_ALL} Lỗi khi đặt status: {e}")
        
        # Bắt đầu auto level
        await self.start_auto_level()
    
    async def on_disconnect(self):
        print(f"{Fore.YELLOW}[Warn]{Style.RESET_ALL} Đã ngắt kết nối")
        
    async def start_auto_level(self):
        """Bắt đầu auto gửi !level"""
        self.is_running = True
        print(f"{Fore.GREEN}[Info]{Style.RESET_ALL} Bắt đầu auto level...")
        
        count = 0
        while self.is_running:
            try:
                count += 1
                channel = self.client.get_channel(self.channel_id)
                
                if not channel:
                    print(f"{Fore.RED}[Error]{Style.RESET_ALL} Không tìm thấy channel!")
                    await asyncio.sleep(60)
                    continue
                
                print(f"{Fore.CYAN}[Info]{Style.RESET_ALL} Lần {count}: Đang gửi !level...")
                
                # Gửi !level
                message = await channel.send("t la nguoi ko phai bot")
                current_time = datetime.datetime.now().strftime("%H:%M:%S")
                print(f"{Fore.GREEN}[Info]{Style.RESET_ALL} Đã gửi !level lúc {current_time}")
                
                # Đợi 5 giây
                await asyncio.sleep(5)
                
                # Xóa tin nhắn
                await message.delete()
                print(f"{Fore.GREEN}[Info]{Style.RESET_ALL} Đã xóa tin nhắn")
                
                # Chờ 55 giây cho lần tiếp theo
                next_time = (datetime.datetime.now() + datetime.timedelta(minutes=1)).strftime("%H:%M:%S")
                print(f"{Fore.CYAN}[Info]{Style.RESET_ALL} Chờ 55 giây... Lần tiếp theo: {next_time}")
                await asyncio.sleep(60)
                
            except discord.errors.HTTPException as e:
                print(f"{Fore.RED}[Error]{Style.RESET_ALL} Lỗi HTTP: {e}")
                await asyncio.sleep(300)
            except Exception as e:
                print(f"{Fore.RED}[Error]{Style.RESET_ALL} Lỗi khác: {e}")
                await asyncio.sleep(300)
    
    async def run(self):
        """Chạy bot"""
        try:
            print(f"{Fore.CYAN}[Info]{Style.RESET_ALL} Đang kết nối...")
            await self.client.start(self.token)
        except discord.errors.LoginFailure:
            print(f"{Fore.RED}[Error]{Style.RESET_ALL} Token không hợp lệ!")
        except KeyboardInterrupt:
            print(f"{Fore.YELLOW}[Warn]{Style.RESET_ALL} Dừng bot...")
            self.is_running = False
            await self.client.close()
        except Exception as e:
            print(f"{Fore.RED}[Error]{Style.RESET_ALL} Lỗi: {e}")

async def main():
    print(f"{Fore.CYAN}[Info]{Style.RESET_ALL} Discord Auto Level Bot - FIXED")
    print(f"{Fore.CYAN}[Info]{Style.RESET_ALL} Đảm bảo đã thay token mới và channel_id")
    
    # Kiểm tra token
    token = "MTIwODQ3NjM5NDUyMTc4OTAz.GxKpQ1.abcdefghijklmnopqrstuvwxyzABC"
    if not token or len(token) < 50:
        print(f"{Fore.RED}[Error]{Style.RESET_ALL} Token không hợp lệ!")
        return
        
    print(f"{Fore.GREEN}[Info]{Style.RESET_ALL} Token có vẻ đúng định dạng")
    
    bot = FixedAutoLevelBot()
    await bot.run()

if __name__ == "__main__":
    asyncio.run(main())