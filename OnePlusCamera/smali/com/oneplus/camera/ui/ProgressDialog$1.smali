.class Lcom/oneplus/camera/ui/ProgressDialog$1;
.super Ljava/lang/Object;
.source "ProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ProgressDialog;->show()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ProgressDialog;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/oneplus/camera/ui/ProgressDialog$1;->this$0:Lcom/oneplus/camera/ui/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method
