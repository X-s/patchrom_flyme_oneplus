.class public interface abstract Lcom/oneplus/gallery2/media/MediaSetList;
.super Ljava/lang/Object;
.source "MediaSetList.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/oneplus/base/BaseObject;
.implements Lcom/oneplus/base/HandlerObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Lcom/oneplus/gallery2/media/MediaSet;",
        ">;",
        "Lcom/oneplus/base/BaseObject;",
        "Lcom/oneplus/base/HandlerObject;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/oneplus/gallery2/media/MediaSetList;

.field public static final EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListMoveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SET_MOVING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListMoveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_RESET:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSetComparator;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_HIDDEN_MEDIA_SET_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
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

.field public static final PROP_SHOW_HIDDEN_MEDIA_SETS:Lcom/oneplus/base/PropertyKey;
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
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 21
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSetList$1;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList$1;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EMPTY:Lcom/oneplus/gallery2/media/MediaSetList;

    .line 27
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Comparator"

    const-class v2, Lcom/oneplus/gallery2/media/MediaSetComparator;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSetList;

    sget-object v5, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    .line 31
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "HiddenMediaSetsCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_HIDDEN_MEDIA_SET_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 35
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsReady"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    .line 39
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ShowHiddenMediaSets"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_SHOW_HIDDEN_MEDIA_SETS:Lcom/oneplus/base/PropertyKey;

    .line 43
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSetAdded"

    const-class v2, Lcom/oneplus/gallery2/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    .line 47
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSetMoved"

    const-class v2, Lcom/oneplus/gallery2/ListMoveEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    .line 51
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSetMoving"

    const-class v2, Lcom/oneplus/gallery2/ListMoveEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_MOVING:Lcom/oneplus/base/EventKey;

    .line 55
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSetRemoved"

    const-class v2, Lcom/oneplus/gallery2/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    .line 59
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSetRemoving"

    const-class v2, Lcom/oneplus/gallery2/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    .line 63
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Reset"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_RESET:Lcom/oneplus/base/EventKey;

    return-void
.end method
