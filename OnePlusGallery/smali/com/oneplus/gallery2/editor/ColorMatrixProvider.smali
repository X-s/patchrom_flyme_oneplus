.class public abstract Lcom/oneplus/gallery2/editor/ColorMatrixProvider;
.super Lcom/oneplus/base/BasicBaseObject;
.source "ColorMatrixProvider.java"


# static fields
.field public static final PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile m_Strength:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 16
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsModified"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createColorMatrix()Landroid/graphics/ColorMatrix;
.end method

.method public getStrength()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->m_Strength:F

    return v0
.end method

.method public setStrength(F)V
    .locals 3
    .param p1, "strength"    # F

    .prologue
    const/4 v2, 0x0

    .line 46
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    .line 47
    const/4 p1, 0x0

    .line 50
    :cond_0
    :goto_0
    iput p1, p0, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->m_Strength:F

    .line 51
    sget-object v1, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 52
    return-void

    .line 48
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 49
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
