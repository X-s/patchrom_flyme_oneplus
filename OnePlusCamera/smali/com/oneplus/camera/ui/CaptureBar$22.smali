.class Lcom/oneplus/camera/ui/CaptureBar$22;
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
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$22;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$22;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;->VIDEO:Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap35(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$IndicatorCaptureMode;)V

    .line 1701
    return-void
.end method
