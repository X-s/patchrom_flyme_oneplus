.class final Lcom/oneplus/gallery2/location/BaseAddressClassifier$1;
.super Ljava/lang/Object;
.source "BaseAddressClassifier.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/location/BaseAddressClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;)I
    .locals 5
    .param p1, "lhs"    # Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    .param p2, "rhs"    # Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    .prologue
    .line 33
    iget v3, p2, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    iget v4, p1, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    sub-int v0, v3, v4

    .line 34
    .local v0, "diff":I
    if-eqz v0, :cond_0

    .line 46
    .end local v0    # "diff":I
    :goto_0
    return v0

    .line 36
    .restart local v0    # "diff":I
    :cond_0
    iget-object v1, p1, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->name:Ljava/lang/String;

    .line 37
    .local v1, "leftName":Ljava/lang/String;
    iget-object v2, p2, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->name:Ljava/lang/String;

    .line 38
    .local v2, "rightName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    :cond_2
    if-eqz v2, :cond_3

    .line 45
    const/4 v0, -0x1

    goto :goto_0

    .line 46
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier$1;->compare(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;)I

    move-result v0

    return v0
.end method
