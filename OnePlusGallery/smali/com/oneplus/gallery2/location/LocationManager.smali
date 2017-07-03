.class public interface abstract Lcom/oneplus/gallery2/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;
    }
.end annotation


# virtual methods
.method public abstract createAddressClassifier(I)Lcom/oneplus/gallery2/location/AddressClassifier;
.end method

.method public abstract getAddresses(Ljava/util/Map;Ljava/util/Locale;Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;I)Lcom/oneplus/base/Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<*",
            "Landroid/location/Location;",
            ">;",
            "Ljava/util/Locale;",
            "Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;",
            "I)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation
.end method
