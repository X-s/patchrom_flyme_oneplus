.class public interface abstract Lcom/oneplus/camera/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final PROP_IS_LOCATION_LISTENER_STARTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LOCATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_KEY_SAVE_LOCATION:Ljava/lang/String; = "Location.Save"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 22
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsLocationListenerStarted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/location/LocationManager;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/location/LocationManager;->PROP_IS_LOCATION_LISTENER_STARTED:Lcom/oneplus/base/PropertyKey;

    .line 26
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Location"

    const-class v2, Landroid/location/Location;

    const-class v3, Lcom/oneplus/camera/location/LocationManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/location/LocationManager;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    .line 11
    return-void
.end method
