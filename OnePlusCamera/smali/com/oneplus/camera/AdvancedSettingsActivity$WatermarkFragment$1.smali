.class Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$1;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 605
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 611
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 608
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$1;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->-wrap0(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
