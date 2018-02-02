.class Lcom/oneplus/camera/CameraActivity$35;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 4887
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$35;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x64

    .line 4892
    const-string/jumbo v2, "level"

    const/16 v3, 0x32

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4893
    .local v0, "level":I
    const-string/jumbo v2, "scale"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4894
    .local v1, "scale":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4895
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$35;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v2, v0}, Lcom/oneplus/camera/CameraActivity;->onBatteryLevelChanged(I)V

    .line 4890
    return-void
.end method
