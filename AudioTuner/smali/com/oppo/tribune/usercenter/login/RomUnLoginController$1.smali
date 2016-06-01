.class Lcom/oppo/tribune/usercenter/login/RomUnLoginController$1;
.super Ljava/lang/Object;
.source "RomUnLoginController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/usercenter/login/RomUnLoginController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/usercenter/login/RomUnLoginController;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/usercenter/login/RomUnLoginController;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/RomUnLoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/RomUnLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->mRomLoginUtils:Lcom/oppo/tribune/RomLoginUtils;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/RomUnLoginController;->access$000(Lcom/oppo/tribune/usercenter/login/RomUnLoginController;)Lcom/oppo/tribune/RomLoginUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/RomLoginUtils;->changeRomLoginState()V

    .line 32
    return-void
.end method
