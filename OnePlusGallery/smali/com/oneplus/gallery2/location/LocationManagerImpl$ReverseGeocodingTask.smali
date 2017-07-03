.class final Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;
.super Ljava/lang/Object;
.source "LocationManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/location/LocationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReverseGeocodingTask"
.end annotation


# instance fields
.field public final handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

.field public volatile locale:Ljava/util/Locale;

.field public final result:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/gallery2/location/LocationManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;)V
    .locals 1
    .param p2, "handle"    # Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->this$0:Lcom/oneplus/gallery2/location/LocationManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    .line 89
    iput-object p2, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    .line 90
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->this$0:Lcom/oneplus/gallery2/location/LocationManagerImpl;

    # invokes: Lcom/oneplus/gallery2/location/LocationManagerImpl;->reverseGeocoding(Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->access$000(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V

    .line 97
    return-void
.end method
