.class public Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;
.super Landroid/support/v7/preference/Preference;
.source "ToggleScreenMagnificationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VideoPreference"
.end annotation


# instance fields
.field private mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mVideoBackgroundView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mVideoBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->this$0:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;

    .line 52
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 10
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v9, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->this$0:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;->-wrap0(Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 60
    .local v7, "res":Landroid/content/res/Resources;
    const v0, 0x7f0f0263

    .line 59
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 62
    .local v4, "backgroundAssetWidth":I
    const v0, 0x7f0f0265

    .line 61
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 64
    .local v3, "videoAssetWidth":I
    const v0, 0x7f0f0266

    .line 63
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 66
    .local v5, "videoAssetHeight":I
    const v0, 0x7f0f0267

    .line 65
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 67
    .local v6, "videoAssetMarginTop":I
    invoke-virtual {p1, v9}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 68
    invoke-virtual {p1, v9}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 69
    const v0, 0x7f11035d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mVideoBackgroundView:Landroid/widget/ImageView;

    .line 70
    const v0, 0x7f11035e

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    .line 73
    .local v2, "videoView":Landroid/widget/VideoView;
    new-instance v0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$1;-><init>(Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;)V

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 80
    const-string/jumbo v0, "%s://%s/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    const-string/jumbo v8, "android.resource"

    aput-object v8, v1, v9

    .line 82
    iget-object v8, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->this$0:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-static {v8}, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;->-wrap0(Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v1, v9

    .line 83
    const/high16 v8, 0x7f090000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v1, v9

    .line 80
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 88
    new-instance v0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;-><init>(Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;Landroid/widget/VideoView;IIII)V

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mVideoBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 56
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mVideoBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 108
    return-void
.end method
