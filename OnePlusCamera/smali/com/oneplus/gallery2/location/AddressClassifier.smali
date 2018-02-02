.class public interface abstract Lcom/oneplus/gallery2/location/AddressClassifier;
.super Ljava/lang/Object;
.source "AddressClassifier.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;
    }
.end annotation


# static fields
.field public static final EVENT_UPDATED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Updated"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/gallery2/location/AddressClassifier;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/location/AddressClassifier;->EVENT_UPDATED:Lcom/oneplus/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract addMedia(Lcom/oneplus/gallery2/media/Media;I)Z
.end method

.method public abstract getLocationNameList(Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeMedia(Lcom/oneplus/gallery2/media/Media;I)Z
.end method
