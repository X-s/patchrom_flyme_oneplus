.class Lcom/oneplus/camera/ui/BusinessCardUI$5;
.super Ljava/lang/Object;
.source "BusinessCardUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BusinessCardUI;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/BusinessCardUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BusinessCardUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/BusinessCardUI;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$5;->this$0:Lcom/oneplus/camera/ui/BusinessCardUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$5;->this$0:Lcom/oneplus/camera/ui/BusinessCardUI;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/BusinessCardUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->finish()V

    .line 169
    return-void
.end method
