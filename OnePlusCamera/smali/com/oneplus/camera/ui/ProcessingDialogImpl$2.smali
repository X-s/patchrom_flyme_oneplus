.class Lcom/oneplus/camera/ui/ProcessingDialogImpl$2;
.super Ljava/lang/Object;
.source "ProcessingDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ProcessingDialogImpl;->showProcessingDialog(Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ProcessingDialogImpl;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$2;->this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method
