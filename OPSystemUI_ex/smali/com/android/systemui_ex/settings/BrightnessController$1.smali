.class Lcom/android/systemui_ex/settings/BrightnessController$1;
.super Lcom/android/systemui_ex/settings/CurrentUserTracker;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui_ex/settings/ToggleSlider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/settings/BrightnessController;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui_ex/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    invoke-direct {p0, p2}, Lcom/android/systemui_ex/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/settings/BrightnessController;->updateMode()V
    invoke-static {v0}, Lcom/android/systemui_ex/settings/BrightnessController;->access$100(Lcom/android/systemui_ex/settings/BrightnessController;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController$1;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/settings/BrightnessController;->updateSlider()V
    invoke-static {v0}, Lcom/android/systemui_ex/settings/BrightnessController;->access$200(Lcom/android/systemui_ex/settings/BrightnessController;)V

    .line 142
    return-void
.end method
