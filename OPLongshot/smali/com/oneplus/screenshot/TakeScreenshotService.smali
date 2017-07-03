.class public Lcom/oneplus/screenshot/TakeScreenshotService;
.super Landroid/app/Service;
.source "TakeScreenshotService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.TakeScreenshotService"

.field private static mScreenshot:Lcom/oneplus/screenshot/GlobalScreenshot;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Lcom/oneplus/screenshot/TakeScreenshotService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/TakeScreenshotService$1;-><init>(Lcom/oneplus/screenshot/TakeScreenshotService;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/oneplus/screenshot/GlobalScreenshot;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oneplus/screenshot/TakeScreenshotService;->mScreenshot:Lcom/oneplus/screenshot/GlobalScreenshot;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/GlobalScreenshot;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 30
    sput-object p0, Lcom/oneplus/screenshot/TakeScreenshotService;->mScreenshot:Lcom/oneplus/screenshot/GlobalScreenshot;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/oneplus/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
