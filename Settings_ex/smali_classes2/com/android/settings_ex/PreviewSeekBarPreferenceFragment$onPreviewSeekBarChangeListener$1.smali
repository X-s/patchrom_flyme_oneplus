.class Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->this$1:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$1;->this$1:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object v0, v0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;->commit()V

    .line 88
    return-void
.end method
