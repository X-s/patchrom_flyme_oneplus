.class public abstract Lcom/oneplus/longshot/LongScreenshotService;
.super Lcom/oneplus/longshot/ILongScreenshot$Stub;
.source "LongScreenshotService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.Service"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mNavBarVisible:Z

.field protected mStatusBarVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/oneplus/longshot/ILongScreenshot$Stub;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/longshot/LongScreenshotService;->mContext:Landroid/content/Context;

    .line 23
    iput-boolean v1, p0, Lcom/oneplus/longshot/LongScreenshotService;->mStatusBarVisible:Z

    .line 28
    iput-boolean v1, p0, Lcom/oneplus/longshot/LongScreenshotService;->mNavBarVisible:Z

    .line 41
    iput-object p1, p0, Lcom/oneplus/longshot/LongScreenshotService;->mContext:Landroid/content/Context;

    .line 42
    iput-boolean p2, p0, Lcom/oneplus/longshot/LongScreenshotService;->mStatusBarVisible:Z

    .line 43
    iput-boolean p3, p0, Lcom/oneplus/longshot/LongScreenshotService;->mNavBarVisible:Z

    .line 44
    return-void
.end method


# virtual methods
.method public isHandleState()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isMoveState()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public notifyScroll(Z)V
    .locals 0
    .param p1, "isOverScroll"    # Z

    .prologue
    .line 53
    return-void
.end method

.method public start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/longshot/ILongScreenshotCallback;

    .prologue
    .line 50
    return-void
.end method

.method public stopLongshot()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
