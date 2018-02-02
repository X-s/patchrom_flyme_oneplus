.class public Lcom/oneplus/media/GroupInterpolator;
.super Ljava/lang/Object;
.source "GroupInterpolator.java"

# interfaces
.implements Lcom/oneplus/media/ColorInterpolator;


# instance fields
.field private m_Interpolators:[Lcom/oneplus/media/ColorInterpolator;


# direct methods
.method public constructor <init>([Lcom/oneplus/media/ColorInterpolator;)V
    .locals 0
    .param p1, "interpolators"    # [Lcom/oneplus/media/ColorInterpolator;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/oneplus/media/GroupInterpolator;->m_Interpolators:[Lcom/oneplus/media/ColorInterpolator;

    .line 14
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    .line 24
    iget-object v2, p0, Lcom/oneplus/media/GroupInterpolator;->m_Interpolators:[Lcom/oneplus/media/ColorInterpolator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/media/GroupInterpolator;->m_Interpolators:[Lcom/oneplus/media/ColorInterpolator;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 25
    :cond_0
    return p1

    .line 26
    :cond_1
    move v1, p1

    .line 27
    .local v1, "result":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/media/GroupInterpolator;->m_Interpolators:[Lcom/oneplus/media/ColorInterpolator;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 28
    iget-object v2, p0, Lcom/oneplus/media/GroupInterpolator;->m_Interpolators:[Lcom/oneplus/media/ColorInterpolator;

    aget-object v2, v2, v0

    invoke-interface {v2, v1}, Lcom/oneplus/media/ColorInterpolator;->getInterpolation(F)F

    move-result v1

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_2
    return v1
.end method
