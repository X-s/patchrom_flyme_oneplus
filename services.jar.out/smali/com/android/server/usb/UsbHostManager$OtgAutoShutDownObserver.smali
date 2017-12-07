.class Lcom/android/server/usb/UsbHostManager$OtgAutoShutDownObserver;
.super Landroid/database/ContentObserver;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtgAutoShutDownObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostManager;Landroid/os/Handler;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/usb/UsbHostManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$OtgAutoShutDownObserver;->this$0:Lcom/android/server/usb/UsbHostManager;

    .line 170
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 172
    invoke-static {p1}, Lcom/android/server/usb/UsbHostManager;->-get2(Lcom/android/server/usb/UsbHostManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    const-string/jumbo v1, "oneplus_otg_auto_disable"

    .line 172
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 173
    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "End register OtgAutoShutDownObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 179
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Observe change, resetAlarmTrigger.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$OtgAutoShutDownObserver;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->-wrap1(Lcom/android/server/usb/UsbHostManager;)V

    .line 178
    return-void
.end method
