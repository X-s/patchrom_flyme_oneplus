.class Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/oneplus/lib/design/widget/AppBarLayout;I)V
    .locals 10
    .param p1, "layout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    const/4 v9, 0x0

    .line 1260
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iput p2, v7, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    .line 1262
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iget-object v7, v7, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iget-object v7, v7, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v7}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    .line 1264
    .local v3, "insetTop":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v7}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v6

    .local v6, "z":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 1265
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v7, v2}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1266
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1267
    .local v4, "lp":Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;
    invoke-static {v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    move-result-object v5

    .line 1269
    .local v5, "offsetHelper":Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
    iget v7, v4, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v7, :pswitch_data_0

    .line 1264
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1262
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "insetTop":I
    .end local v4    # "lp":Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
    .end local v6    # "z":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "insetTop":I
    goto :goto_0

    .line 1272
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v4    # "lp":Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;
    .restart local v5    # "offsetHelper":Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
    .restart local v6    # "z":I
    :pswitch_0
    neg-int v7, p2

    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v9, v8}, Lcom/oneplus/lib/design/widget/Utils;->constrain(III)I

    move-result v7

    .line 1271
    invoke-virtual {v5, v7}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 1276
    :pswitch_1
    neg-int v7, p2

    int-to-float v7, v7

    iget v8, v4, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1275
    invoke-virtual {v5, v7}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 1282
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
    :cond_1
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v7}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1284
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iget-object v7, v7, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    if-lez v3, :cond_2

    .line 1285
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1289
    :cond_2
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v7}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v7

    .line 1290
    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    .line 1289
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v1, v7, v3

    .line 1291
    .local v1, "expandRange":I
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iget-object v7, v7, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 1292
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v1

    div-float/2addr v8, v9

    .line 1291
    invoke-virtual {v7, v8}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1259
    return-void

    .line 1269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
