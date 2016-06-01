.class Lcom/oneplus/camera/ui/CaptureBar$3;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$3;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$3;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # invokes: Lcom/oneplus/camera/ui/CaptureBar;->onFlashButtonClicked()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->access$600(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 442
    return-void
.end method
