.class Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)V
    .locals 1
    .param p1, "sbv"    # Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onSampleStarting(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)V

    .line 138
    :cond_0
    return-void
.end method
