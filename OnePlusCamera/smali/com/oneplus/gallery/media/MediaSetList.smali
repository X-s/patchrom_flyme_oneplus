.class public interface abstract Lcom/oneplus/gallery/media/MediaSetList;
.super Ljava/lang/Object;
.source "MediaSetList.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/oneplus/base/BaseObject;
.implements Lcom/oneplus/base/HandlerObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/MediaSetList$Comparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Lcom/oneplus/gallery/media/MediaSet;",
        ">;",
        "Lcom/oneplus/base/BaseObject;",
        "Lcom/oneplus/base/HandlerObject;"
    }
.end annotation


# static fields
.field public static final EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListMoveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SET_MOVING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListMoveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/media/MediaSetList$Comparator;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CONTAINS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_READY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 20
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ContainsCameraRoll"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/media/MediaSetList;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaSetList;->PROP_CONTAINS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    .line 24
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Comparator"

    const-class v2, Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    const-class v3, Lcom/oneplus/gallery/media/MediaSetList;

    const/4 v4, 0x2

    sget-object v5, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->SYSTEM_ALBUM_DIRECTORY:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaSetList;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    .line 28
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsReady"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/media/MediaSetList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    .line 34
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSetAdded"

    const-class v2, Lcom/oneplus/gallery/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery/media/MediaSetList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    .line 38
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSetMoved"

    const-class v2, Lcom/oneplus/gallery/ListMoveEventArgs;

    const-class v3, Lcom/oneplus/gallery/media/MediaSetList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    .line 42
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSetMoving"

    const-class v2, Lcom/oneplus/gallery/ListMoveEventArgs;

    const-class v3, Lcom/oneplus/gallery/media/MediaSetList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_MOVING:Lcom/oneplus/base/EventKey;

    .line 46
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSetRemoved"

    const-class v2, Lcom/oneplus/gallery/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery/media/MediaSetList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    .line 50
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSetRemoving"

    const-class v2, Lcom/oneplus/gallery/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery/media/MediaSetList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    return-void
.end method
