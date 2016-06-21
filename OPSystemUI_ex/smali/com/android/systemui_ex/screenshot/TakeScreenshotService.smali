.class public Lcom/android/systemui_ex/screenshot/TakeScreenshotService;
.super Landroid/app/Service;
.source "TakeScreenshotService.java"


# static fields
.field private static mScreenshot:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

.field private static sCanDo:Z


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->sCanDo:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/screenshot/TakeScreenshotService$1;-><init>(Lcom/android/systemui_ex/screenshot/TakeScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui_ex/screenshot/GlobalScreenshot;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Lcom/android/systemui_ex/screenshot/GlobalScreenshot;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    .prologue
    .line 28
    sput-object p0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->sCanDo:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 28
    sput-boolean p0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->sCanDo:Z

    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 78
    const-string v0, "TakeScreenshotService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    invoke-virtual {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->saveScreenshot()V

    .line 83
    const/4 v0, 0x3

    return v0
.end method
