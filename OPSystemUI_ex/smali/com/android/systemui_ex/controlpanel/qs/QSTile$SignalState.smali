.class public final Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignalState"
.end annotation


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public connected:Z

.field public enabled:Z

.field public filter:Z

.field public isOverlayIconWide:Z

.field public overlayIconId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 418
    move-object v1, p1

    check-cast v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;

    .line 419
    .local v1, "o":Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;
    iget-boolean v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    iget-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    if-ne v4, v5, :cond_0

    iget-boolean v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->connected:Z

    iget-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->connected:Z

    if-ne v4, v5, :cond_0

    iget-boolean v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->activityIn:Z

    iget-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->activityIn:Z

    if-ne v4, v5, :cond_0

    iget-boolean v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->activityOut:Z

    iget-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->activityOut:Z

    if-ne v4, v5, :cond_0

    iget v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->overlayIconId:I

    iget v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->overlayIconId:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iget-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->isOverlayIconWide:Z

    if-eq v4, v5, :cond_3

    :cond_0
    move v0, v3

    .line 424
    .local v0, "changed":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    iput-boolean v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    .line 425
    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->connected:Z

    iput-boolean v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->connected:Z

    .line 426
    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->activityIn:Z

    iput-boolean v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->activityIn:Z

    .line 427
    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->activityOut:Z

    iput-boolean v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->activityOut:Z

    .line 428
    iget v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->overlayIconId:I

    iput v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->overlayIconId:I

    .line 429
    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->filter:Z

    iput-boolean v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->filter:Z

    .line 430
    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iput-boolean v4, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->isOverlayIconWide:Z

    .line 431
    invoke-super {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->copyTo(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    .end local v0    # "changed":Z
    :cond_3
    move v0, v2

    .line 419
    goto :goto_0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 436
    invoke-super {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    .local v0, "rt":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->connected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",activityIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->activityIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",activityOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->activityOut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",overlayIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->overlayIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->filter:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",wideOverlayIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;->isOverlayIconWide:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    return-object v0
.end method
