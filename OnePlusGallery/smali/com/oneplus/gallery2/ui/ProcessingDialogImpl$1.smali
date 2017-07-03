.class Lcom/oneplus/gallery2/ui/ProcessingDialogImpl$1;
.super Ljava/lang/Object;
.source "ProcessingDialogImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/ui/ProcessingDialogImpl;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/ui/ProcessingDialogImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/ui/ProcessingDialogImpl;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oneplus/gallery2/ui/ProcessingDialogImpl$1;->this$0:Lcom/oneplus/gallery2/ui/ProcessingDialogImpl;

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
    .line 127
    const/4 v0, 0x1

    return v0
.end method
