.class public Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;
.super Ljava/lang/Object;
.source "OpGlobalActionEntryAnimations.java"


# instance fields
.field private final mAdvSelectedAnimSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/AnimationSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdvShowAnimSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/AnimationSet;",
            ">;"
        }
    .end annotation
.end field

.field private mHideIconAnimationSet:Landroid/view/animation/AnimationSet;

.field private final mSelectedAnimSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/AnimationSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowAnimSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/AnimationSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mShowAnimSets:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mSelectedAnimSets:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvShowAnimSets:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvSelectedAnimSets:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mHideIconAnimationSet:Landroid/view/animation/AnimationSet;

    .line 24
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->initAnimations()V

    .line 25
    return-void
.end method

.method private initAdvSelectedAnimations()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x190

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 141
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvSelectedAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Landroid/view/animation/AnimationSet;

    .end local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 145
    .restart local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x3c550000    # -342.0f

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 146
    .local v1, "pathAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 147
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 149
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 150
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 152
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvSelectedAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Landroid/view/animation/AnimationSet;

    .end local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 156
    .restart local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "pathAnim":Landroid/view/animation/TranslateAnimation;
    invoke-direct {v1, v3, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 157
    .restart local v1    # "pathAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 158
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 160
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 161
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 163
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvSelectedAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Landroid/view/animation/AnimationSet;

    .end local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 167
    .restart local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "pathAnim":Landroid/view/animation/TranslateAnimation;
    const/high16 v2, 0x43ab0000    # 342.0f

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 168
    .restart local v1    # "pathAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 169
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 171
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 172
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 174
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvSelectedAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method private initAdvShowAnimations()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x190

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 100
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 101
    .local v1, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvShowAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Landroid/view/animation/AnimationSet;

    .end local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 105
    .restart local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const v3, 0x44094000    # 549.0f

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 106
    .local v2, "pathAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 107
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 108
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 109
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 110
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 112
    iget-object v3, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvShowAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Landroid/view/animation/AnimationSet;

    .end local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 116
    .restart local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "pathAnim":Landroid/view/animation/TranslateAnimation;
    const/high16 v3, -0x3c550000    # -342.0f

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 117
    .restart local v2    # "pathAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 118
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 119
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 120
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 121
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 122
    iget-object v3, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvShowAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Landroid/view/animation/AnimationSet;

    .end local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 126
    .restart local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "pathAnim":Landroid/view/animation/TranslateAnimation;
    const/high16 v3, -0x3bd50000    # -684.0f

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 127
    .restart local v2    # "pathAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 128
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 129
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 130
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 131
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 132
    iget-object v3, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvShowAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method private initAnimations()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->initShowAnimations()V

    .line 189
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->initSelectedAnimations()V

    .line 190
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->initAdvShowAnimations()V

    .line 191
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->initAdvSelectedAnimations()V

    .line 192
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->initHideAnimations()V

    .line 193
    return-void
.end method

.method private initHideAnimations()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 179
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 180
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mHideIconAnimationSet:Landroid/view/animation/AnimationSet;

    .line 181
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mHideIconAnimationSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 182
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mHideIconAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 183
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mHideIconAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 184
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mHideIconAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 185
    return-void
.end method

.method private initSelectedAnimations()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x190

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 66
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x3cb10000    # -207.0f

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 67
    .local v1, "pathAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 68
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 70
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 71
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 73
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mSelectedAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Landroid/view/animation/AnimationSet;

    .end local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 77
    .restart local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "pathAnim":Landroid/view/animation/TranslateAnimation;
    const/high16 v2, 0x434f0000    # 207.0f

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 78
    .restart local v1    # "pathAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 79
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 81
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 82
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 84
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mSelectedAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Landroid/view/animation/AnimationSet;

    .end local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 88
    .restart local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mSelectedAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Landroid/view/animation/AnimationSet;

    .end local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 91
    .restart local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mSelectedAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method private initShowAnimations()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x190

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 33
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 34
    .local v1, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 35
    .local v2, "pathAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 36
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 38
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 39
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 40
    iget-object v3, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mShowAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Landroid/view/animation/AnimationSet;

    .end local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 44
    .restart local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "pathAnim":Landroid/view/animation/TranslateAnimation;
    const/high16 v3, -0x3c790000    # -270.0f

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 45
    .restart local v2    # "pathAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 46
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 47
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 48
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 49
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 50
    iget-object v3, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mShowAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Landroid/view/animation/AnimationSet;

    .end local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 54
    .restart local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mShowAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Landroid/view/animation/AnimationSet;

    .end local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 57
    .restart local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mShowAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method


# virtual methods
.method public clearAnimations()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mShowAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mSelectedAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvShowAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvSelectedAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mHideIconAnimationSet:Landroid/view/animation/AnimationSet;

    .line 215
    return-void
.end method

.method public getAdvSelectedAnimSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/AnimationSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvSelectedAnimSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAdvShowAnimSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/AnimationSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvShowAnimSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHideAnimSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mHideIconAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getSelectedAnimSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/AnimationSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mSelectedAnimSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShowAnimSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/AnimationSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mShowAnimSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public refreshAnimations()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mShowAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mSelectedAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvShowAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mAdvSelectedAnimSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->mHideIconAnimationSet:Landroid/view/animation/AnimationSet;

    .line 202
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->initShowAnimations()V

    .line 203
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->initSelectedAnimations()V

    .line 204
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->initAdvShowAnimations()V

    .line 205
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->initAdvSelectedAnimations()V

    .line 206
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->initHideAnimations()V

    .line 207
    return-void
.end method
