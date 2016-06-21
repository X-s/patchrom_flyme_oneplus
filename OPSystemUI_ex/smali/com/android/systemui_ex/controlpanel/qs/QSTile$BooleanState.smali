.class public Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
.super Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanState"
.end annotation


# instance fields
.field public value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    .prologue
    .line 393
    move-object v1, p1

    check-cast v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;

    .line 394
    .local v1, "o":Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;
    invoke-super {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->copyTo(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 395
    .local v0, "changed":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    iput-boolean v2, v1, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    .line 396
    return v0

    .line 394
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 401
    invoke-super {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 402
    .local v0, "rt":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    return-object v0
.end method
