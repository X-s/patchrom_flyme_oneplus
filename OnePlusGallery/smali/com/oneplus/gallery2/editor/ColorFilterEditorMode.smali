.class public Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;
.super Lcom/oneplus/gallery2/editor/BaseEditorMode;
.source "ColorFilterEditorMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$5;,
        Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;
    }
.end annotation


# instance fields
.field private m_ContrastButton:Landroid/widget/ImageButton;

.field private m_ControlPanelListener:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;

.field private m_CurrentProgress:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

.field private m_ExposureButton:Landroid/widget/ImageButton;

.field private m_LastCommitContrast:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

.field private m_LastCommitExposure:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

.field private m_LastCommitSaturation:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

.field private m_Mode:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

.field private m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

.field private m_SaturationButton:Landroid/widget/ImageButton;

.field private m_ShowTempOriginalPreview:Z


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    const/16 v2, 0x37

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/BaseEditorMode;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    .line 21
    new-instance v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    invoke-direct {v0, v2, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;-><init>(IF)V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitContrast:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    .line 22
    new-instance v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    invoke-direct {v0, v2, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;-><init>(IF)V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitExposure:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    .line 23
    new-instance v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    invoke-direct {v0, v2, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;-><init>(IF)V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitSaturation:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    .line 24
    sget-object v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->NONE:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    .line 41
    new-instance v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$1;-><init>(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ControlPanelListener:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->onControlPanelNegativeClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->onControlPanelPositiveClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;
    .param p1, "x1"    # Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->onControlPanelProgressChanged(Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;
    .param p1, "x1"    # Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->changeColorFilterMode(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;)V

    return-void
.end method

.method private changeColorFilterMode(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->isEnter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    if-eq v0, p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->TAG:Ljava/lang/String;

    const-string v1, "changeColorFilterMode() - Change color filter: "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    .line 117
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->updateProgressControls()V

    goto :goto_0
.end method

.method private onControlPanelNegativeClicked()V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v0

    .line 127
    .local v0, "photoEditor":Lcom/oneplus/gallery2/editor/PhotoEditor;
    sget-object v1, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$5;->$SwitchMap$com$oneplus$gallery2$editor$ColorFilterEditorMode$ColorFilterMode:[I

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    sget-object v1, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->NONE:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->changeColorFilterMode(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;)V

    .line 145
    return-void

    .line 130
    :pswitch_0
    iget-boolean v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ShowTempOriginalPreview:Z

    if-nez v1, :cond_0

    .line 131
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_EXPOSURE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitExposure:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v2, v2, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :pswitch_1
    iget-boolean v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ShowTempOriginalPreview:Z

    if-nez v1, :cond_0

    .line 135
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_CONTRAST:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitContrast:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v2, v2, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :pswitch_2
    iget-boolean v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ShowTempOriginalPreview:Z

    if-nez v1, :cond_0

    .line 139
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_SATURATION:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitSaturation:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v2, v2, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onControlPanelPositiveClicked()V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$5;->$SwitchMap$com$oneplus$gallery2$editor$ColorFilterEditorMode$ColorFilterMode:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    sget-object v0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->NONE:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->changeColorFilterMode(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;)V

    .line 168
    return-void

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitExposure:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitContrast:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitSaturation:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onControlPanelProgressChanged(Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;)V
    .locals 3
    .param p1, "progress"    # Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v1, v1, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->progress:I

    iget v2, p1, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->progress:I

    if-ne v1, v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    .line 183
    iget-boolean v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ShowTempOriginalPreview:Z

    if-nez v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v0

    .line 188
    .local v0, "photoEditor":Lcom/oneplus/gallery2/editor/PhotoEditor;
    sget-object v1, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$5;->$SwitchMap$com$oneplus$gallery2$editor$ColorFilterEditorMode$ColorFilterMode:[I

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_CONTRAST:Lcom/oneplus/base/PropertyKey;

    iget v2, p1, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :pswitch_1
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_EXPOSURE:Lcom/oneplus/base/PropertyKey;

    iget v2, p1, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :pswitch_2
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_SATURATION:Lcom/oneplus/base/PropertyKey;

    iget v2, p1, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateProgressControls()V
    .locals 5

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-result-object v0

    .line 307
    .local v0, "fragment":Lcom/oneplus/gallery2/PhotoEditorFragment;
    sget-object v1, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$5;->$SwitchMap$com$oneplus$gallery2$editor$ColorFilterEditorMode$ColorFilterMode:[I

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 335
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    .line 339
    :goto_0
    return-void

    .line 311
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitExposure:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    .line 312
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 313
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitExposure:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v1, v1, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->progress:I

    const v2, 0x7f090007

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->NORMAL:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    iget-object v4, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ControlPanelListener:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery2/PhotoEditorFragment;->showControlPanel(ILjava/lang/String;Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 319
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitContrast:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    .line 320
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 321
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitContrast:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v1, v1, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->progress:I

    const v2, 0x7f090008

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->NORMAL:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    iget-object v4, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ControlPanelListener:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery2/PhotoEditorFragment;->showControlPanel(ILjava/lang/String;Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 327
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitSaturation:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    .line 328
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 329
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitSaturation:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v1, v1, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->progress:I

    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->NORMAL:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    iget-object v4, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ControlPanelListener:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery2/PhotoEditorFragment;->showControlPanel(ILjava/lang/String;Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancelTempOriginalPreview()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->isEnter()Z

    move-result v5

    if-nez v5, :cond_0

    .line 98
    :goto_0
    return v4

    .line 77
    :cond_0
    iput-boolean v4, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ShowTempOriginalPreview:Z

    .line 78
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v2

    .line 79
    .local v2, "photoEditor":Lcom/oneplus/gallery2/editor/PhotoEditor;
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitContrast:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v0, v4, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    .line 80
    .local v0, "contrastValue":F
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitExposure:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v1, v4, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    .line 81
    .local v1, "exposureValue":F
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_LastCommitSaturation:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v3, v4, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    .line 82
    .local v3, "saturationValue":F
    sget-object v4, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$5;->$SwitchMap$com$oneplus$gallery2$editor$ColorFilterEditorMode$ColorFilterMode:[I

    iget-object v5, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_Mode:Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;

    invoke-virtual {v5}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$ColorFilterMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 94
    :goto_1
    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_CONTRAST:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 95
    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_EXPOSURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 96
    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_SATURATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->refreshPreview()V

    .line 98
    const/4 v4, 0x1

    goto :goto_0

    .line 85
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v0, v4, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    .line 86
    goto :goto_1

    .line 88
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v1, v4, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    .line 89
    goto :goto_1

    .line 91
    :pswitch_2
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_CurrentProgress:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;

    iget v3, v4, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelProgress;->value:F

    goto :goto_1

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateUI(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v2

    const v3, 0x7f03001d

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 211
    const v1, 0x7f060080

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, "baseView":Landroid/view/View;
    const v1, 0x7f060081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ExposureButton:Landroid/widget/ImageButton;

    .line 213
    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ContrastButton:Landroid/widget/ImageButton;

    .line 214
    const v1, 0x7f060083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_SaturationButton:Landroid/widget/ImageButton;

    .line 217
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ExposureButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$2;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$2;-><init>(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ContrastButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$3;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$3;-><init>(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_SaturationButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$4;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode$4;-><init>(Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->updateProgressControls()V

    .line 246
    return-object v0
.end method

.method protected onDestroyUI()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    .line 256
    return-void
.end method

.method protected onEnter(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 271
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ProgressControlsHandle:Lcom/oneplus/base/Handle;

    .line 282
    invoke-super {p0}, Lcom/oneplus/gallery2/editor/BaseEditorMode;->onRelease()V

    .line 283
    return-void
.end method

.method public showTempOriginalPreview()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->isEnter()Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    const/4 v1, 0x0

    .line 298
    :goto_0
    return v1

    .line 292
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->m_ShowTempOriginalPreview:Z

    .line 293
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/ColorFilterEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v0

    .line 294
    .local v0, "photoEditor":Lcom/oneplus/gallery2/editor/PhotoEditor;
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_CONTRAST:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 295
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_EXPOSURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 296
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_SATURATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->refreshPreview()V

    goto :goto_0
.end method
