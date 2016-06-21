.class Lcom/android/systemui_ex/volume/VolumePanel$3;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Lcom/android/systemui_ex/volume/Interaction$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/volume/VolumePanel;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui_ex/statusbar/policy/ZenModeController;)V
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
    .line 470
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumePanel$3;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$3;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # invokes: Lcom/android/systemui_ex/volume/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$1100(Lcom/android/systemui_ex/volume/VolumePanel;)V

    .line 474
    return-void
.end method
