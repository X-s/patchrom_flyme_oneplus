.class public abstract Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AddressCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/Handle;",
            "Ljava/util/Locale;",
            "Ljava/util/Map",
            "<*",
            "Landroid/location/Address;",
            ">;I)V"
        }
    .end annotation
.end method
