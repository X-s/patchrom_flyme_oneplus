.class Lcom/oneplus/camera/ui/CaptureBar$15;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
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
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$15;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 1
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$15;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap18(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V

    .line 441
    return-void
.end method
