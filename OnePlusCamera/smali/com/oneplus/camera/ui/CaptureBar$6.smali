.class Lcom/oneplus/camera/ui/CaptureBar$6;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 323
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap13(Lcom/oneplus/camera/ui/CaptureBar;Landroid/view/View;)V

    .line 326
    return-void
.end method
