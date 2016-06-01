.class Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mAccountName:Landroid/widget/TextView;

.field mDelteleButton:Landroid/widget/Button;

.field final synthetic this$1:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;


# direct methods
.method private constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;->this$1:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;Lcom/oppo/tribune/usercenter/login/LoginView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;
    .param p2, "x1"    # Lcom/oppo/tribune/usercenter/login/LoginView$1;

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;-><init>(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;)V

    return-void
.end method
