.class Lcom/android/server/OemExService$OemExInputCallBack;
.super Ljava/lang/Object;
.source "OemExService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemExInputCallBack"
.end annotation


# instance fields
.field private mCallBack:Lcom/oem/os/IOemExInputCallBack;

.field mKeyCode:I

.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;Lcom/oem/os/IOemExInputCallBack;I)V
    .locals 1
    .param p2, "callBack"    # Lcom/oem/os/IOemExInputCallBack;
    .param p3, "keycode"    # I

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/server/OemExService$OemExInputCallBack;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OemExService$OemExInputCallBack;->mCallBack:Lcom/oem/os/IOemExInputCallBack;

    .line 399
    iput-object p2, p0, Lcom/android/server/OemExService$OemExInputCallBack;->mCallBack:Lcom/oem/os/IOemExInputCallBack;

    .line 400
    iput p3, p0, Lcom/android/server/OemExService$OemExInputCallBack;->mKeyCode:I

    .line 401
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/OemExService$OemExInputCallBack;)Lcom/oem/os/IOemExInputCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService$OemExInputCallBack;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/server/OemExService$OemExInputCallBack;->mCallBack:Lcom/oem/os/IOemExInputCallBack;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/OemExService$OemExInputCallBack;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/OemExService;->access$400(Lcom/android/server/OemExService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 405
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/OemExService$OemExInputCallBack;->mCallBack:Lcom/oem/os/IOemExInputCallBack;

    .line 406
    iget-object v0, p0, Lcom/android/server/OemExService$OemExInputCallBack;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/OemExService;->access$400(Lcom/android/server/OemExService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 407
    monitor-exit v1

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
