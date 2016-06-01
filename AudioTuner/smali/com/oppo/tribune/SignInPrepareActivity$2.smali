.class Lcom/oppo/tribune/SignInPrepareActivity$2;
.super Ljava/lang/Object;
.source "SignInPrepareActivity.java"

# interfaces
.implements Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;


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
    .line 103
    iput-object p1, p0, Lcom/oppo/tribune/SignInPrepareActivity$2;->this$0:Lcom/oppo/tribune/SignInPrepareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginSuccessed()V
    .locals 4

    .prologue
    .line 107
    sget-wide v0, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity$2;->this$0:Lcom/oppo/tribune/SignInPrepareActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oppo/tribune/SignInPrepareActivity$2;->this$0:Lcom/oppo/tribune/SignInPrepareActivity;

    invoke-virtual {v2}, Lcom/oppo/tribune/SignInPrepareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/SignInPrepareActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    iget-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity$2;->this$0:Lcom/oppo/tribune/SignInPrepareActivity;

    invoke-virtual {v0}, Lcom/oppo/tribune/SignInPrepareActivity;->finish()V

    .line 111
    :cond_0
    return-void
.end method
