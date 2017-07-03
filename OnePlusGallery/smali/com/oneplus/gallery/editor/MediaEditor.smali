.class public interface abstract Lcom/oneplus/gallery/editor/MediaEditor;
.super Ljava/lang/Object;
.source "MediaEditor.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;,
        Lcom/oneplus/gallery/editor/MediaEditor$State;
    }
.end annotation


# static fields
.field public static final FLAG_ALWAYS_SAVE:I = 0x2

.field public static final FLAG_NEW_MEDIA:I = 0x1

.field public static final PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MEDIA:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MEDIA_SAVING_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MODIFIED_MEDIA:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_DRAWABLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/editor/MediaEditor$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 27
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsModified"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/editor/MediaEditor;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/MediaEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    .line 31
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Media"

    const-class v2, Lcom/oneplus/gallery/media/Media;

    const-class v3, Lcom/oneplus/gallery/editor/MediaEditor;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/MediaEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 35
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaSavingState"

    const-class v2, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    const-class v3, Lcom/oneplus/gallery/editor/MediaEditor;

    sget-object v4, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;->NONE:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/MediaEditor;->PROP_MEDIA_SAVING_STATE:Lcom/oneplus/base/PropertyKey;

    .line 39
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ModifiedMedia"

    const-class v2, Lcom/oneplus/gallery/media/Media;

    const-class v3, Lcom/oneplus/gallery/editor/MediaEditor;

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/MediaEditor;->PROP_MODIFIED_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 43
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PreviewDrawable"

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v3, Lcom/oneplus/gallery/editor/MediaEditor;

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/MediaEditor;->PROP_PREVIEW_DRAWABLE:Lcom/oneplus/base/PropertyKey;

    .line 47
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "State"

    const-class v2, Lcom/oneplus/gallery/editor/MediaEditor$State;

    const-class v3, Lcom/oneplus/gallery/editor/MediaEditor;

    sget-object v4, Lcom/oneplus/gallery/editor/MediaEditor$State;->NONE:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/MediaEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract revert(I)Z
.end method

.method public abstract save(I)Z
.end method
