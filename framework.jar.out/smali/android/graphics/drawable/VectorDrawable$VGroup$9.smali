.class final Landroid/graphics/drawable/VectorDrawable$VGroup$9;
.super Ljava/util/HashMap;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VGroup;
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
    .line 1193
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1195
    const-string/jumbo v0, "translateX"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get5()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const-string/jumbo v0, "translateY"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get6()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    const-string/jumbo v0, "scaleX"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get3()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string/jumbo v0, "scaleY"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get4()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string/jumbo v0, "pivotX"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get0()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string/jumbo v0, "pivotY"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get1()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const-string/jumbo v0, "rotation"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get2()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    return-void
.end method
