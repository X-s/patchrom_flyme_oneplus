.class public Lcom/oneplus/screenshot/longshot/compare/ColorCompare;
.super Ljava/lang/Object;
.source "ColorCompare.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/compare/Comparable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorCompare"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "error":I
    sget v1, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_ERROR:I

    packed-switch v1, :pswitch_data_0

    .line 23
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PIXEL_ERROR_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    :goto_0
    move-object v1, p1

    .line 26
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_0

    move v1, v2

    .line 35
    .end local p1    # "obj1":Ljava/lang/Object;
    .end local p2    # "obj2":Ljava/lang/Object;
    :goto_1
    return v1

    .line 20
    .restart local p1    # "obj1":Ljava/lang/Object;
    .restart local p2    # "obj2":Ljava/lang/Object;
    :pswitch_0
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PIXEL_ERROR_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    .line 21
    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 29
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_1

    move v1, v2

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj1":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj2":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_2

    move v1, v2

    .line 33
    goto :goto_1

    .line 35
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
