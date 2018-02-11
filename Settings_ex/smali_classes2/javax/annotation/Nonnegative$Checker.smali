.class public Ljavax/annotation/Nonnegative$Checker;
.super Ljava/lang/Object;
.source "Nonnegative.java"

# interfaces
.implements Ljavax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/annotation/Nonnegative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/annotation/meta/TypeQualifierValidator",
        "<",
        "Ljavax/annotation/Nonnegative;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .locals 1
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .param p2, "v"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Ljavax/annotation/Nonnegative;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Ljavax/annotation/Nonnegative$Checker;->forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object v0

    return-object v0
.end method

.method public forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .locals 6
    .param p1, "annotation"    # Ljavax/annotation/Nonnegative;
    .param p2, "v"    # Ljava/lang/Object;

    .prologue
    .line 21
    instance-of v2, p2, Ljava/lang/Number;

    if-nez v2, :cond_0

    .line 22
    sget-object v2, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object v2

    :cond_0
    move-object v1, p2

    .line 24
    check-cast v1, Ljava/lang/Number;

    .line 25
    .local v1, "value":Ljava/lang/Number;
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 26
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v0, 0x1

    .line 34
    .local v0, "isNegative":Z
    :goto_0
    if-eqz v0, :cond_8

    .line 35
    sget-object v2, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object v2

    .line 26
    .end local v0    # "isNegative":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isNegative":Z
    goto :goto_0

    .line 27
    .end local v0    # "isNegative":Z
    :cond_2
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_4

    .line 28
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "isNegative":Z
    goto :goto_0

    .end local v0    # "isNegative":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isNegative":Z
    goto :goto_0

    .line 29
    .end local v0    # "isNegative":Z
    :cond_4
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_6

    .line 30
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    const/4 v0, 0x1

    .restart local v0    # "isNegative":Z
    goto :goto_0

    .end local v0    # "isNegative":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isNegative":Z
    goto :goto_0

    .line 32
    .end local v0    # "isNegative":Z
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-gez v2, :cond_7

    const/4 v0, 0x1

    .restart local v0    # "isNegative":Z
    goto :goto_0

    .end local v0    # "isNegative":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "isNegative":Z
    goto :goto_0

    .line 37
    :cond_8
    sget-object v2, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    return-object v2
.end method
