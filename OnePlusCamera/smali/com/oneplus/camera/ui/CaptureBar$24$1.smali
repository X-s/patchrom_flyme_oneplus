.class Lcom/oneplus/camera/ui/CaptureBar$24$1;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar$24;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/CaptureBar$24;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar$24;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/CaptureBar$24;

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$24$1;->this$1:Lcom/oneplus/camera/ui/CaptureBar$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$24$1;->this$1:Lcom/oneplus/camera/ui/CaptureBar$24;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$24;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap46(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 1737
    return-void
.end method
