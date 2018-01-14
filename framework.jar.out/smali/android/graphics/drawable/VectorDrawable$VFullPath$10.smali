.class final Landroid/graphics/drawable/VectorDrawable$VFullPath$10;
.super Ljava/util/HashMap;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VFullPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/util/Property;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1764
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1766
    const-string/jumbo v0, "strokeWidth"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get4()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    const-string/jumbo v0, "strokeColor"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get3()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    const-string/jumbo v0, "strokeAlpha"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get2()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    const-string/jumbo v0, "fillColor"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get1()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    const-string/jumbo v0, "fillAlpha"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get0()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    const-string/jumbo v0, "trimPathStart"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get7()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    const-string/jumbo v0, "trimPathEnd"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get5()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    const-string/jumbo v0, "trimPathOffset"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get6()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    return-void
.end method
