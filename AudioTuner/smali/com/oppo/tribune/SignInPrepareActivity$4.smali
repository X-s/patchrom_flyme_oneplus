.class Lcom/oppo/tribune/SignInPrepareActivity$4;
.super Ljava/lang/Object;
.source "SignInPrepareActivity.java"

# interfaces
.implements Lcom/oppo/tribune/util/NetCheckService$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/SignInPrepareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/SignInPrepareActivity;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/SignInPrepareActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oppo/tribune/SignInPrepareActivity$4;->this$0:Lcom/oppo/tribune/SignInPrepareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public login(Z)V
    .locals 1
    .param p1, "isLogin"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity$4;->this$0:Lcom/oppo/tribune/SignInPrepareActivity;

    # getter for: Lcom/oppo/tribune/SignInPrepareActivity;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;
    invoke-static {v0}, Lcom/oppo/tribune/SignInPrepareActivity;->access$000(Lcom/oppo/tribune/SignInPrepareActivity;)Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->isLoginTaskIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity$4;->this$0:Lcom/oppo/tribune/SignInPrepareActivity;

    invoke-virtual {v0}, Lcom/oppo/tribune/SignInPrepareActivity;->finish()V

    .line 130
    :cond_0
    return-void
.end method
