.class Lcom/oneplus/camera/ui/CaptureBar$18;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->getSetImageRunnable(Landroid/widget/ImageView;I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;

.field final synthetic val$resId:I

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p2, "val$view"    # Landroid/widget/ImageView;
    .param p3, "val$resId"    # I

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$18;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iput-object p2, p0, Lcom/oneplus/camera/ui/CaptureBar$18;->val$view:Landroid/widget/ImageView;

    iput p3, p0, Lcom/oneplus/camera/ui/CaptureBar$18;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$18;->val$view:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/camera/ui/CaptureBar$18;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1117
    return-void
.end method
