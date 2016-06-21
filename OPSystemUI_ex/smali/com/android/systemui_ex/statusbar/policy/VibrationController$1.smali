.class Lcom/android/systemui_ex/statusbar/policy/VibrationController$1;
.super Ljava/lang/Object;
.source "VibrationController.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/VibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/VibrationController;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/policy/VibrationController;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 1
    .param p1, "showThreeKeyPanel"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/VibrationController;->handleThreeKeyStateChange()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->access$400(Lcom/android/systemui_ex/statusbar/policy/VibrationController;)V

    .line 117
    return-void
.end method
