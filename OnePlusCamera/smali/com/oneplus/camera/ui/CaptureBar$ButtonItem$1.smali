.class Lcom/oneplus/camera/ui/CaptureBar$ButtonItem$1;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    .prologue
    .line 2516
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap9(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;)V

    .line 2519
    return-void
.end method
