.class final Lcom/oneplus/base/BasicBaseObject$Event;
.super Ljava/lang/Object;
.source "BasicBaseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/BasicBaseObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Event"
.end annotation


# instance fields
.field public addingHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/EventHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field public handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/EventHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field public final key:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<*>;"
        }
    .end annotation
.end field

.field public logFlags:I

.field public raisingCounter:I

.field public removingHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/EventHandler",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/base/EventKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/oneplus/base/BasicBaseObject$Event;->key:Lcom/oneplus/base/EventKey;

    .line 76
    return-void
.end method
