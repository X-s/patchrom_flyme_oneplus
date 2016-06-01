.class Lcom/oppo/tribune/SignInPrepareActivity$1;
.super Ljava/lang/Object;
.source "SignInPrepareActivity.java"

# interfaces
.implements Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;


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
    .line 95
    iput-object p1, p0, Lcom/oppo/tribune/SignInPrepareActivity$1;->this$0:Lcom/oppo/tribune/SignInPrepareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public choose()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oppo/tribune/SignInPrepareActivity$1;->this$0:Lcom/oppo/tribune/SignInPrepareActivity;

    invoke-virtual {v0}, Lcom/oppo/tribune/SignInPrepareActivity;->finish()V

    .line 100
    return-void
.end method
