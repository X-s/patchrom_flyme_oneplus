.class final Lcom/oneplus/base/BasicBaseObject$Property;
.super Ljava/lang/Object;
.source "BasicBaseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/BasicBaseObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Property"
.end annotation


# instance fields
.field public addingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<*>;>;"
        }
    .end annotation
.end field

.field public callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<*>;>;"
        }
    .end annotation
.end field

.field public volatile hasValue:Z

.field public final key:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<*>;"
        }
    .end annotation
.end field

.field public logFlags:I

.field public removingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<*>;>;"
        }
    .end annotation
.end field

.field public updatingCounter:I

.field public volatile value:Ljava/lang/Object;

.field public version:I


# direct methods
.method public constructor <init>(Lcom/oneplus/base/PropertyKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/oneplus/base/BasicBaseObject$Property;->key:Lcom/oneplus/base/PropertyKey;

    .line 59
    return-void
.end method
