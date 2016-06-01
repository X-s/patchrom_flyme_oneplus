.class Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$2;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$2;->this$2:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 371
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 372
    return-void
.end method
