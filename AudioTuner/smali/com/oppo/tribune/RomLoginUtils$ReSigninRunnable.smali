.class Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;
.super Ljava/lang/Object;
.source "RomLoginUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/RomLoginUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReSigninRunnable"
.end annotation


# instance fields
.field isRunning:Z

.field final synthetic this$0:Lcom/oppo/tribune/RomLoginUtils;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/RomLoginUtils;)V
    .locals 1

    .prologue
    .line 224
    iput-object p1, p0, Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;->isRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;->isRunning:Z

    .line 230
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # getter for: Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/tribune/RomLoginUtils;->access$900(Lcom/oppo/tribune/RomLoginUtils;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # getter for: Lcom/oppo/tribune/RomLoginUtils;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/tribune/RomLoginUtils;->access$1000(Lcom/oppo/tribune/RomLoginUtils;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->reqReSignin(Landroid/content/Context;Landroid/os/Handler;)V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;->isRunning:Z

    .line 232
    return-void
.end method
