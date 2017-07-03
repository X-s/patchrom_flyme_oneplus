.class final Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;
.super Lcom/oneplus/gallery2/location/BaseAddressClassifier;
.source "LocationManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/location/LocationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddressClassifierImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/location/LocationManagerImpl;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;->this$0:Lcom/oneplus/gallery2/location/LocationManagerImpl;

    invoke-direct {p0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery2/location/LocationManagerImpl;
    .param p2, "x1"    # Lcom/oneplus/gallery2/location/LocationManagerImpl$1;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;-><init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;)V

    return-void
.end method


# virtual methods
.method protected onMediaAdded(Lcom/oneplus/gallery2/media/Media;)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->onMediaAdded(Lcom/oneplus/gallery2/media/Media;)V

    .line 154
    iget-object v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;->this$0:Lcom/oneplus/gallery2/location/LocationManagerImpl;

    # invokes: Lcom/oneplus/gallery2/location/LocationManagerImpl;->onMediaAddedToAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->access$100(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V

    .line 155
    return-void
.end method

.method protected onMediaRemoved(Lcom/oneplus/gallery2/media/Media;)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;->this$0:Lcom/oneplus/gallery2/location/LocationManagerImpl;

    # invokes: Lcom/oneplus/gallery2/location/LocationManagerImpl;->onMediaRemovedFromAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->access$200(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V

    .line 162
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->onMediaRemoved(Lcom/oneplus/gallery2/media/Media;)V

    .line 163
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;->this$0:Lcom/oneplus/gallery2/location/LocationManagerImpl;

    # invokes: Lcom/oneplus/gallery2/location/LocationManagerImpl;->onAddressClassifierReleased(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->access$300(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;)V

    .line 170
    invoke-super {p0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->onRelease()V

    .line 171
    return-void
.end method
