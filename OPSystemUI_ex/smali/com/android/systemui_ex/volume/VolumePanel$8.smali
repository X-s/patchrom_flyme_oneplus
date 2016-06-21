.class Lcom/android/systemui_ex/volume/VolumePanel$8;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumePanel$8;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$8;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # invokes: Lcom/android/systemui_ex/volume/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1100(Lcom/android/systemui_ex/volume/VolumePanel;)V

    .line 946
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$8;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # invokes: Lcom/android/systemui_ex/volume/VolumePanel;->showSilentHint()V
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1800(Lcom/android/systemui_ex/volume/VolumePanel;)V

    .line 947
    const/4 v0, 0x0

    return v0
.end method
