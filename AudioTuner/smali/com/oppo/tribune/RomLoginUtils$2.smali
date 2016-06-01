.class Lcom/oppo/tribune/RomLoginUtils$2;
.super Ljava/lang/Object;
.source "RomLoginUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/RomLoginUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/RomLoginUtils;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/RomLoginUtils;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/oppo/tribune/RomLoginUtils$2;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils$2;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # getter for: Lcom/oppo/tribune/RomLoginUtils;->mTokenSignInRunnable:Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;
    invoke-static {v0}, Lcom/oppo/tribune/RomLoginUtils;->access$300(Lcom/oppo/tribune/RomLoginUtils;)Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils$2;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # getter for: Lcom/oppo/tribune/RomLoginUtils;->mTokenSignInRunnable:Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;
    invoke-static {v0}, Lcom/oppo/tribune/RomLoginUtils;->access$300(Lcom/oppo/tribune/RomLoginUtils;)Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->cancle()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils$2;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    const/4 v1, 0x0

    # setter for: Lcom/oppo/tribune/RomLoginUtils;->mTokenSignInRunnable:Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;
    invoke-static {v0, v1}, Lcom/oppo/tribune/RomLoginUtils;->access$302(Lcom/oppo/tribune/RomLoginUtils;Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;)Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;

    .line 190
    return-void
.end method
