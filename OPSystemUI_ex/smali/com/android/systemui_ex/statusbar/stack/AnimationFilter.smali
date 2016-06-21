.class public Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;
.super Ljava/lang/Object;
.source "AnimationFilter.java"


# instance fields
.field animateAlpha:Z

.field animateDark:Z

.field animateDimmed:Z

.field animateHeight:Z

.field animateHideSensitive:Z

.field animateScale:Z

.field animateTopInset:Z

.field animateY:Z

.field animateZ:Z

.field darkAnimationOriginIndex:I

.field hasDarkEvent:Z

.field hasDelays:Z

.field hasGoToFullShadeEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private combineFilter(Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateAlpha:Z

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateAlpha:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateAlpha:Z

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateY:Z

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateY:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateY:Z

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateZ:Z

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateZ:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateZ:Z

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateScale:Z

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateScale:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateScale:Z

    .line 117
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateHeight:Z

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateHeight:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateHeight:Z

    .line 118
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateTopInset:Z

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateTopInset:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateTopInset:Z

    .line 119
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateDimmed:Z

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateDimmed:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateDimmed:Z

    .line 120
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateDark:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateDark:Z

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 122
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasDelays:Z

    iget-boolean v1, p1, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasDelays:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasDelays:Z

    .line 123
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateAlpha:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateY:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateZ:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateScale:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateHeight:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateTopInset:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateDimmed:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateDark:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasDelays:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasDarkEvent:Z

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .line 140
    return-void
.end method


# virtual methods
.method public animateAlpha()Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateAlpha:Z

    .line 41
    return-object p0
.end method

.method public animateDark()Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateDark:Z

    .line 81
    return-object p0
.end method

.method public animateDimmed()Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateDimmed:Z

    .line 76
    return-object p0
.end method

.method public animateHeight()Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateHeight:Z

    .line 66
    return-object p0
.end method

.method public animateHideSensitive()Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 86
    return-object p0
.end method

.method public animateScale()Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateScale:Z

    .line 61
    return-object p0
.end method

.method public animateTopInset()Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateTopInset:Z

    .line 71
    return-object p0
.end method

.method public animateY()Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateY:Z

    .line 46
    return-object p0
.end method

.method public animateZ()Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->animateZ:Z

    .line 56
    return-object p0
.end method

.method public applyCombination(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    const/4 v5, 0x1

    .line 95
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->reset()V

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 97
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 98
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 99
    .local v0, "ev":Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v3, v3, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;)V

    .line 100
    iget v3, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 102
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    .line 104
    :cond_0
    iget v3, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 106
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasDarkEvent:Z

    .line 107
    iget v3, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->darkAnimationOriginIndex:I

    iput v3, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .line 97
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "ev":Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_2
    return-void
.end method

.method public hasDelays()Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/AnimationFilter;->hasDelays:Z

    .line 51
    return-object p0
.end method
