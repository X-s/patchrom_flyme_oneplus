.class public abstract Lcom/oneplus/gallery2/SnackBarHostActivity;
.super Lcom/oneplus/gallery2/GalleryActivity;
.source "SnackBarHostActivity.java"

# interfaces
.implements Lcom/oneplus/base/SnackBarHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/SnackBarHostActivity$5;,
        Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;,
        Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;
    }
.end annotation


# static fields
.field private static final DURATION_SNACKBAR_ANIMATION:J = 0x96L

.field private static final STATE_KEY_SNACKBAR_HANDLES:Ljava/lang/String; = "SnackBarHostActivity.SnackbarHandles"


# instance fields
.field private m_Snackbar:Landroid/view/View;

.field private m_SnackbarActionTextView:Landroid/widget/TextView;

.field private m_SnackbarHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_SnackbarTitleTextView:Landroid/widget/TextView;

.field private m_SnackbarVisibilityState:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;-><init>()V

    .line 34
    sget-object v0, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/SnackBarHostActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/SnackBarHostActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/SnackBarHostActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/SnackBarHostActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/SnackBarHostActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/SnackBarHostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/SnackBarHostActivity;->updateSnackbarVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/SnackBarHostActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/SnackBarHostActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/gallery2/SnackBarHostActivity;Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;)Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/SnackBarHostActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/SnackBarHostActivity;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/SnackBarHostActivity;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/SnackBarHostActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/SnackBarHostActivity;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/SnackBarHostActivity;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/SnackBarHostActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateSnackbarTitleAndAction()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarActionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;

    .line 157
    .local v0, "handle":Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarActionTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->actionText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarActionTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarTitleTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSnackbarVisibility(Z)V
    .locals 8
    .param p1, "animation"    # Z

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 168
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    if-nez v1, :cond_1

    .line 170
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/SnackBarHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    .line 171
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    if-nez v1, :cond_0

    .line 285
    :goto_0
    :pswitch_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    const v2, 0x7f060099

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarActionTextView:Landroid/widget/TextView;

    .line 174
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    const v2, 0x7f060098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarTitleTextView:Landroid/widget/TextView;

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 181
    :cond_2
    if-eqz p1, :cond_3

    .line 183
    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity$5;->$SwitchMap$com$oneplus$gallery2$SnackBarHostActivity$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 201
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 202
    .local v0, "height":I
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/SnackBarHostActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery2/SnackBarHostActivity$2;-><init>(Lcom/oneplus/gallery2/SnackBarHostActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/SnackBarHostActivity$1;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/SnackBarHostActivity$1;-><init>(Lcom/oneplus/gallery2/SnackBarHostActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 221
    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    goto :goto_0

    .line 187
    .end local v0    # "height":I
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 192
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_1

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    .line 227
    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/SnackBarHostActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 233
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery2/SnackBarHostActivity;->updateSnackbarTitleAndAction()V

    .line 235
    invoke-virtual {p0}, Lcom/oneplus/gallery2/SnackBarHostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 236
    .restart local v0    # "height":I
    if-eqz p1, :cond_5

    .line 239
    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity$5;->$SwitchMap$com$oneplus$gallery2$SnackBarHostActivity$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 258
    :goto_2
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/SnackBarHostActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery2/SnackBarHostActivity$4;-><init>(Lcom/oneplus/gallery2/SnackBarHostActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/SnackBarHostActivity$3;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/SnackBarHostActivity$3;-><init>(Lcom/oneplus/gallery2/SnackBarHostActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 276
    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    goto/16 :goto_0

    .line 243
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 249
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 280
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 281
    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    .line 282
    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/SnackBarHostActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 239
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onContentViewSet(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryActivity;->onContentViewSet(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/SnackBarHostActivity;->updateSnackbarVisibility(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 101
    if-eqz p2, :cond_1

    .line 103
    const-string v2, "SnackBarHostActivity.SnackbarHandles"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    .line 104
    iget-object v2, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;

    .line 107
    .local v0, "handle":Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;
    iput-object p0, v0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery2/SnackBarHostActivity;

    goto :goto_0

    .line 108
    .end local v0    # "handle":Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/SnackBarHostActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/SnackBarHostActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 109
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/SnackBarHostActivity;->updateSnackbarVisibility(Z)V

    .line 112
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "SnackBarHostActivity.SnackbarHandles"

    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 124
    return-void
.end method

.method public showSnackbar(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "action"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->TAG:Ljava/lang/String;

    const-string v2, "showSnackbar() - Show"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    .line 142
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;-><init>(Lcom/oneplus/gallery2/SnackBarHostActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 143
    .local v0, "handle":Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;
    iget-object v1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/SnackBarHostActivity;->updateSnackbarVisibility(Z)V

    .line 145
    return-object v0
.end method
