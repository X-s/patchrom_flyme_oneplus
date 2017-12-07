.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;,
        Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final BYTE_ALIGN_II:S = 0x4949s

.field private static final BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final DEBUG:Z = false

.field private static final DEBUG_ONEPLUS:Z

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_HINT:I = 0x1

.field private static final IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field private static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_HINT:I = 0x2

.field private static final IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_HINT:I = 0x3

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_POINTER_TAG_HINTS:[I

.field private static final IFD_THUMBNAIL_HINT:I = 0x4

.field private static final IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_HINT:I = 0x0

.field private static final IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_SIGNATURE:[B

.field private static final JPEG_SIGNATURE_SIZE:I = 0x3

.field private static final MARKER:B = -0x1t

.field private static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field private static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static m_Is_Raw_Input_Stream:Z

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private final mIsInputStream:Z

.field private mIsRaw:Z

.field private mIsSupportedFile:Z

.field private final mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static synthetic -get0()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic -get1()[B
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static synthetic -get3()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v4, 0x4

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 71
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    .line 375
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 403
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 404
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "BYTE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "STRING"

    aput-object v1, v0, v10

    const-string/jumbo v1, "USHORT"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ULONG"

    aput-object v1, v0, v4

    const-string/jumbo v1, "URATIONAL"

    aput-object v1, v0, v11

    const-string/jumbo v1, "SBYTE"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "UNDEFINED"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "SSHORT"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 405
    const-string/jumbo v1, "SLONG"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "SRATIONAL"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "SINGLE"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "DOUBLE"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 403
    sput-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 408
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 411
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 417
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/ExifInterface;->m_Is_Raw_Input_Stream:Z

    .line 825
    const/16 v0, 0x20

    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 826
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageWidth"

    const/16 v2, 0x100

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 827
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageLength"

    const/16 v2, 0x101

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 828
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "BitsPerSample"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v10

    .line 829
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Compression"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v3

    .line 830
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PhotometricInterpretation"

    const/16 v2, 0x106

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v4

    .line 831
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageDescription"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v11

    .line 832
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Make"

    const/16 v2, 0x10f

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x6

    aput-object v0, v8, v1

    .line 833
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Model"

    const/16 v2, 0x110

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x7

    aput-object v0, v8, v1

    .line 834
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripOffsets"

    const/16 v2, 0x111

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x8

    aput-object v0, v8, v1

    .line 835
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Orientation"

    const/16 v2, 0x112

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x9

    aput-object v0, v8, v1

    .line 836
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SamplesPerPixel"

    const/16 v2, 0x115

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xa

    aput-object v0, v8, v1

    .line 837
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "RowsPerStrip"

    const/16 v2, 0x116

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xb

    aput-object v0, v8, v1

    .line 838
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripByteCounts"

    const/16 v2, 0x117

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xc

    aput-object v0, v8, v1

    .line 839
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "XResolution"

    const/16 v2, 0x11a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xd

    aput-object v0, v8, v1

    .line 840
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YResolution"

    const/16 v2, 0x11b

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xe

    aput-object v0, v8, v1

    .line 841
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PlanarConfiguration"

    const/16 v2, 0x11c

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xf

    aput-object v0, v8, v1

    .line 842
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ResolutionUnit"

    const/16 v2, 0x128

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x10

    aput-object v0, v8, v1

    .line 843
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "TransferFunction"

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x11

    aput-object v0, v8, v1

    .line 844
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Software"

    const/16 v2, 0x131

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x12

    aput-object v0, v8, v1

    .line 845
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTime"

    const/16 v2, 0x132

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x13

    aput-object v0, v8, v1

    .line 846
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Artist"

    const/16 v2, 0x13b

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x14

    aput-object v0, v8, v1

    .line 847
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "WhitePoint"

    const/16 v2, 0x13e

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x15

    aput-object v0, v8, v1

    .line 848
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PrimaryChromaticities"

    const/16 v2, 0x13f

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x16

    aput-object v0, v8, v1

    .line 849
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x17

    aput-object v0, v8, v1

    .line 850
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x18

    aput-object v0, v8, v1

    .line 851
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrCoefficients"

    const/16 v2, 0x211

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x19

    aput-object v0, v8, v1

    .line 852
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrSubSampling"

    const/16 v2, 0x212

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1a

    aput-object v0, v8, v1

    .line 853
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrPositioning"

    const/16 v2, 0x213

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1b

    aput-object v0, v8, v1

    .line 854
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ReferenceBlackWhite"

    const/16 v2, 0x214

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1c

    aput-object v0, v8, v1

    .line 855
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Copyright"

    const v2, 0x8298

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1d

    aput-object v0, v8, v1

    .line 856
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExifIFDPointer"

    const v2, 0x8769

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1e

    aput-object v0, v8, v1

    .line 857
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "GPSInfoIFDPointer"

    const v2, 0x8825

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1f

    aput-object v0, v8, v1

    .line 825
    sput-object v8, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 861
    const/16 v0, 0x39

    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 862
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureTime"

    const v2, 0x829a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 863
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FNumber"

    const v2, 0x829d

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 864
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureProgram"

    const v2, 0x8822

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v10

    .line 865
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SpectralSensitivity"

    const v2, 0x8824

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v3

    .line 866
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ISOSpeedRatings"

    const v2, 0x8827

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v4

    .line 867
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "OECF"

    const v2, 0x8828

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v11

    .line 868
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExifVersion"

    const v2, 0x9000

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x6

    aput-object v0, v8, v1

    .line 869
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTimeOriginal"

    const v2, 0x9003

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x7

    aput-object v0, v8, v1

    .line 870
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTimeDigitized"

    const v2, 0x9004

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x8

    aput-object v0, v8, v1

    .line 871
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ComponentsConfiguration"

    const v2, 0x9101

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x9

    aput-object v0, v8, v1

    .line 872
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "CompressedBitsPerPixel"

    const v2, 0x9102

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xa

    aput-object v0, v8, v1

    .line 873
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ShutterSpeedValue"

    const v2, 0x9201

    const/16 v9, 0xa

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xb

    aput-object v0, v8, v1

    .line 874
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ApertureValue"

    const v2, 0x9202

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xc

    aput-object v0, v8, v1

    .line 875
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "BrightnessValue"

    const v2, 0x9203

    const/16 v9, 0xa

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xd

    aput-object v0, v8, v1

    .line 876
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureBiasValue"

    const v2, 0x9204

    const/16 v9, 0xa

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xe

    aput-object v0, v8, v1

    .line 877
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "MaxApertureValue"

    const v2, 0x9205

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xf

    aput-object v0, v8, v1

    .line 878
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectDistance"

    const v2, 0x9206

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x10

    aput-object v0, v8, v1

    .line 879
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "MeteringMode"

    const v2, 0x9207

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x11

    aput-object v0, v8, v1

    .line 880
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "LightSource"

    const v2, 0x9208

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x12

    aput-object v0, v8, v1

    .line 881
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Flash"

    const v2, 0x9209

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x13

    aput-object v0, v8, v1

    .line 882
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalLength"

    const v2, 0x920a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x14

    aput-object v0, v8, v1

    .line 883
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectArea"

    const v2, 0x9214

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x15

    aput-object v0, v8, v1

    .line 884
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "MakerNote"

    const v2, 0x927c

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x16

    aput-object v0, v8, v1

    .line 885
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "UserComment"

    const v2, 0x9286

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x17

    aput-object v0, v8, v1

    .line 886
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubSecTime"

    const v2, 0x9290

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x18

    aput-object v0, v8, v1

    .line 887
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubSecTimeOriginal"

    const v2, 0x9291

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x19

    aput-object v0, v8, v1

    .line 888
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubSecTimeDigitized"

    const v2, 0x9292

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1a

    aput-object v0, v8, v1

    .line 889
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FlashpixVersion"

    const v2, 0xa000

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1b

    aput-object v0, v8, v1

    .line 890
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ColorSpace"

    const v2, 0xa001

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1c

    aput-object v0, v8, v1

    .line 891
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PixelXDimension"

    const v2, 0xa002

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1d

    aput-object v0, v8, v1

    .line 892
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PixelYDimension"

    const v2, 0xa003

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1e

    aput-object v0, v8, v1

    .line 893
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "RelatedSoundFile"

    const v2, 0xa004

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1f

    aput-object v0, v8, v1

    .line 894
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "InteroperabilityIFDPointer"

    const v2, 0xa005

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x20

    aput-object v0, v8, v1

    .line 895
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FlashEnergy"

    const v2, 0xa20b

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x21

    aput-object v0, v8, v1

    .line 896
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SpatialFrequencyResponse"

    const v2, 0xa20c

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x22

    aput-object v0, v8, v1

    .line 897
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalPlaneXResolution"

    const v2, 0xa20e

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x23

    aput-object v0, v8, v1

    .line 898
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalPlaneYResolution"

    const v2, 0xa20f

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x24

    aput-object v0, v8, v1

    .line 899
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalPlaneResolutionUnit"

    const v2, 0xa210

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x25

    aput-object v0, v8, v1

    .line 900
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectLocation"

    const v2, 0xa214

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x26

    aput-object v0, v8, v1

    .line 901
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureIndex"

    const v2, 0xa215

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x27

    aput-object v0, v8, v1

    .line 902
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SensingMethod"

    const v2, 0xa217

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x28

    aput-object v0, v8, v1

    .line 903
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FileSource"

    const v2, 0xa300

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x29

    aput-object v0, v8, v1

    .line 904
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SceneType"

    const v2, 0xa301

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2a

    aput-object v0, v8, v1

    .line 905
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "CFAPattern"

    const v2, 0xa302

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2b

    aput-object v0, v8, v1

    .line 906
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "CustomRendered"

    const v2, 0xa401

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2c

    aput-object v0, v8, v1

    .line 907
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureMode"

    const v2, 0xa402

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2d

    aput-object v0, v8, v1

    .line 908
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "WhiteBalance"

    const v2, 0xa403

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2e

    aput-object v0, v8, v1

    .line 909
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DigitalZoomRatio"

    const v2, 0xa404

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2f

    aput-object v0, v8, v1

    .line 910
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalLengthIn35mmFilm"

    const v2, 0xa405

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x30

    aput-object v0, v8, v1

    .line 911
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SceneCaptureType"

    const v2, 0xa406

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x31

    aput-object v0, v8, v1

    .line 912
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "GainControl"

    const v2, 0xa407

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x32

    aput-object v0, v8, v1

    .line 913
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Contrast"

    const v2, 0xa408

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x33

    aput-object v0, v8, v1

    .line 914
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Saturation"

    const v2, 0xa409

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x34

    aput-object v0, v8, v1

    .line 915
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Sharpness"

    const v2, 0xa40a

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x35

    aput-object v0, v8, v1

    .line 916
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DeviceSettingDescription"

    const v2, 0xa40b

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x36

    aput-object v0, v8, v1

    .line 917
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectDistanceRange"

    const v2, 0xa40c

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x37

    aput-object v0, v8, v1

    .line 918
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageUniqueID"

    const v2, 0xa420

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x38

    aput-object v0, v8, v1

    .line 861
    sput-object v8, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 922
    const/16 v0, 0x1f

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 923
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSVersionID"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 924
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLatitudeRef"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 925
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLatitude"

    invoke-direct {v1, v2, v10, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v10

    .line 926
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLongitudeRef"

    invoke-direct {v1, v2, v3, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v3

    .line 927
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLongitude"

    invoke-direct {v1, v2, v4, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v4

    .line 928
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSAltitudeRef"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v11, v8, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v11

    .line 929
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSAltitude"

    const/4 v8, 0x6

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 930
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSTimeStamp"

    const/4 v8, 0x7

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 931
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSSatellites"

    const/16 v8, 0x8

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 932
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSStatus"

    const/16 v8, 0x9

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 933
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSMeasureMode"

    const/16 v8, 0xa

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 934
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDOP"

    const/16 v8, 0xb

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 935
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSSpeedRef"

    const/16 v8, 0xc

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 936
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSSpeed"

    const/16 v8, 0xd

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 937
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSTrackRef"

    const/16 v8, 0xe

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 938
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSTrack"

    const/16 v8, 0xf

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 939
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSImgDirectionRef"

    const/16 v8, 0x10

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 940
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSImgDirection"

    const/16 v8, 0x11

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 941
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSMapDatum"

    const/16 v8, 0x12

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 942
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLatitudeRef"

    const/16 v8, 0x13

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 943
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLatitude"

    const/16 v8, 0x14

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 944
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLongitudeRef"

    const/16 v8, 0x15

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 945
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLongitude"

    const/16 v8, 0x16

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 946
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestBearingRef"

    const/16 v8, 0x17

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 947
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestBearing"

    const/16 v8, 0x18

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 948
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestDistanceRef"

    const/16 v8, 0x19

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 949
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestDistance"

    const/16 v8, 0x1a

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 950
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSProcessingMethod"

    const/16 v8, 0x1b

    const/4 v9, 0x7

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 951
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSAreaInformation"

    const/16 v8, 0x1c

    const/4 v9, 0x7

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 952
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDateStamp"

    const/16 v8, 0x1d

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 953
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDifferential"

    const/16 v8, 0x1e

    invoke-direct {v1, v2, v8, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 922
    sput-object v0, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 956
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 957
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "InteroperabilityIndex"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 956
    sput-object v0, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 960
    const/16 v0, 0x20

    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 961
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ThumbnailImageWidth"

    const/16 v2, 0x100

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 962
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ThumbnailImageLength"

    const/16 v2, 0x101

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 963
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "BitsPerSample"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v10

    .line 964
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Compression"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v3

    .line 965
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PhotometricInterpretation"

    const/16 v2, 0x106

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v4

    .line 966
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageDescription"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v11

    .line 967
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Make"

    const/16 v2, 0x10f

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x6

    aput-object v0, v8, v1

    .line 968
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Model"

    const/16 v2, 0x110

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x7

    aput-object v0, v8, v1

    .line 969
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripOffsets"

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x8

    aput-object v0, v8, v1

    .line 970
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Orientation"

    const/16 v2, 0x112

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x9

    aput-object v0, v8, v1

    .line 971
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SamplesPerPixel"

    const/16 v2, 0x115

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xa

    aput-object v0, v8, v1

    .line 972
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "RowsPerStrip"

    const/16 v2, 0x116

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xb

    aput-object v0, v8, v1

    .line 973
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripByteCounts"

    const/16 v2, 0x117

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xc

    aput-object v0, v8, v1

    .line 974
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "XResolution"

    const/16 v2, 0x11a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xd

    aput-object v0, v8, v1

    .line 975
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YResolution"

    const/16 v2, 0x11b

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xe

    aput-object v0, v8, v1

    .line 976
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PlanarConfiguration"

    const/16 v2, 0x11c

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xf

    aput-object v0, v8, v1

    .line 977
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ResolutionUnit"

    const/16 v2, 0x128

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x10

    aput-object v0, v8, v1

    .line 978
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "TransferFunction"

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x11

    aput-object v0, v8, v1

    .line 979
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Software"

    const/16 v2, 0x131

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x12

    aput-object v0, v8, v1

    .line 980
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTime"

    const/16 v2, 0x132

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x13

    aput-object v0, v8, v1

    .line 981
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Artist"

    const/16 v2, 0x13b

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x14

    aput-object v0, v8, v1

    .line 982
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "WhitePoint"

    const/16 v2, 0x13e

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x15

    aput-object v0, v8, v1

    .line 983
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PrimaryChromaticities"

    const/16 v2, 0x13f

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x16

    aput-object v0, v8, v1

    .line 984
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x17

    aput-object v0, v8, v1

    .line 985
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x18

    aput-object v0, v8, v1

    .line 986
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrCoefficients"

    const/16 v2, 0x211

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x19

    aput-object v0, v8, v1

    .line 987
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrSubSampling"

    const/16 v2, 0x212

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1a

    aput-object v0, v8, v1

    .line 988
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrPositioning"

    const/16 v2, 0x213

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1b

    aput-object v0, v8, v1

    .line 989
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ReferenceBlackWhite"

    const/16 v2, 0x214

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1c

    aput-object v0, v8, v1

    .line 990
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Copyright"

    const v2, 0x8298

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1d

    aput-object v0, v8, v1

    .line 991
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExifIFDPointer"

    const v2, 0x8769

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1e

    aput-object v0, v8, v1

    .line 992
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "GPSInfoIFDPointer"

    const v2, 0x8825

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1f

    aput-object v0, v8, v1

    .line 960
    sput-object v8, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1005
    new-array v0, v11, [[Landroid/media/ExifInterface$ExifTag;

    .line 1006
    sget-object v1, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v10

    sget-object v1, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v3

    .line 1007
    sget-object v1, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v4

    .line 1005
    sput-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 1010
    new-array v0, v3, [Landroid/media/ExifInterface$ExifTag;

    .line 1011
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "ExifIFDPointer"

    const v8, 0x8769

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1012
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1013
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "InteroperabilityIFDPointer"

    const v8, 0xa005

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v10

    .line 1010
    sput-object v0, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1017
    const/4 v0, 0x1

    .line 1016
    filled-new-array {v0, v10, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->IFD_POINTER_TAG_HINTS:[I

    .line 1021
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    .line 1020
    sput-object v0, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 1023
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    .line 1022
    sput-object v0, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 1026
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 1028
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 1029
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v11, [Ljava/lang/String;

    .line 1030
    const-string/jumbo v2, "FNumber"

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const-string/jumbo v2, "DigitalZoomRatio"

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-string/jumbo v2, "ExposureTime"

    aput-object v2, v1, v10

    const-string/jumbo v2, "SubjectDistance"

    aput-object v2, v1, v3

    .line 1031
    const-string/jumbo v2, "GPSTimeStamp"

    aput-object v2, v1, v4

    .line 1029
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 1038
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 1040
    const-string/jumbo v0, "Exif\u0000\u0000"

    sget-object v1, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 1065
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1066
    invoke-static {}, Landroid/media/ExifInterface;->nativeInitRaw()V

    .line 1067
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 1068
    sget-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1071
    const/4 v6, 0x0

    .local v6, "hint":I
    :goto_0
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 1072
    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    .line 1073
    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    .line 1074
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v0, v6

    const/4 v0, 0x0

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v7, v1, v0

    .line 1075
    .local v7, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    iget v4, v7, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    iget-object v4, v7, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1071
    .end local v7    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1096
    :cond_1
    const-string/jumbo v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 1099
    const-string/jumbo v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1098
    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    .line 68
    return-void

    .line 375
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 408
    :array_1
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data

    .line 411
    :array_2
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1086
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    new-array v3, v3, [Ljava/util/HashMap;

    iput-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1087
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1131
    if-nez p1, :cond_0

    .line 1132
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "fileDescriptor cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1134
    :cond_0
    iput-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1135
    iput-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1136
    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1137
    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1142
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1149
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1150
    const/4 v1, 0x0

    .line 1152
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_2
    invoke-direct {p0, v2}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1155
    .end local v1    # "in":Ljava/io/FileInputStream;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1130
    return-void

    .line 1143
    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1147
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1
    iput-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 1154
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    .line 1155
    .end local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1154
    throw v3

    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1086
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1087
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1165
    if-nez p1, :cond_0

    .line 1166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1168
    :cond_0
    iput-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1169
    instance-of v0, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1170
    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1171
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1180
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1181
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    .line 1164
    return-void

    .line 1172
    :cond_1
    instance-of v0, p1, Ljava/io/FileInputStream;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1173
    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v0

    .line 1172
    if-eqz v0, :cond_2

    .line 1174
    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    move-object v0, p1

    .line 1175
    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 1177
    :cond_2
    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1178
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1086
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [Ljava/util/HashMap;

    iput-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1087
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1105
    if-nez p1, :cond_0

    .line 1106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1108
    :cond_0
    const/4 v0, 0x0

    .line 1109
    .local v0, "in":Ljava/io/FileInputStream;
    iput-object v3, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1110
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1111
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1113
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1114
    .end local v0    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1115
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1119
    :goto_0
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1121
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1104
    return-void

    .line 1117
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1120
    :catchall_0
    move-exception v2

    move-object v0, v1

    .line 1121
    .end local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1120
    throw v2

    .restart local v0    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 2193
    const-string/jumbo v1, "DateTimeOriginal"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2194
    .local v0, "valueOfDateTimeOriginal":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2195
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "DateTime"

    .line 2196
    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2195
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2200
    :cond_0
    const-string/jumbo v1, "ImageWidth"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2201
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "ImageWidth"

    .line 2202
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2201
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    :cond_1
    const-string/jumbo v1, "ImageLength"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2205
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "ImageLength"

    .line 2206
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2205
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    :cond_2
    const-string/jumbo v1, "Orientation"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2209
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "Orientation"

    .line 2210
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2209
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    :cond_3
    const-string/jumbo v1, "LightSource"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 2213
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string/jumbo v2, "LightSource"

    .line 2214
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2213
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    :cond_4
    return-void
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 18
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 1820
    :try_start_0
    const-string/jumbo v9, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1823
    .local v8, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1824
    .local v5, "pair":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 1825
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 1824
    div-double v2, v14, v16

    .line 1827
    .local v2, "degrees":D
    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1828
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 1829
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 1828
    div-double v6, v14, v16

    .line 1831
    .local v6, "minutes":D
    const/4 v9, 0x2

    aget-object v9, v8, v9

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1832
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 1833
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 1832
    div-double v12, v14, v16

    .line 1835
    .local v12, "seconds":D
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    div-double v14, v6, v14

    add-double/2addr v14, v2

    const-wide v16, 0x40ac200000000000L    # 3600.0

    div-double v16, v12, v16

    add-double v10, v14, v16

    .line 1836
    .local v10, "result":D
    const-string/jumbo v9, "S"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "W"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    .line 1837
    :cond_0
    neg-double v14, v10

    double-to-float v9, v14

    return v9

    .line 1839
    :cond_1
    double-to-float v9, v10

    return v9

    .line 1840
    .end local v2    # "degrees":D
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "minutes":D
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v10    # "result":D
    .end local v12    # "seconds":D
    :catch_0
    move-exception v4

    .line 1842
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1194
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1195
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1196
    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .end local v1    # "value":Ljava/lang/Object;
    return-object v1

    .line 1193
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1199
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    return-object v3
.end method

.method private static getIfdHintFromTagNumber(I)I
    .locals 2
    .param p0, "tagNumber"    # I

    .prologue
    .line 2366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->IFD_POINTER_TAG_HINTS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2367
    sget-object v1, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    if-ne v1, p0, :cond_0

    .line 2368
    sget-object v1, Landroid/media/ExifInterface;->IFD_POINTER_TAG_HINTS:[I

    aget v1, v1, v0

    return v1

    .line 2366
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2371
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getJpegAttributes(Ljava/io/InputStream;)V
    .locals 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1854
    const/4 v2, 0x0

    .line 1858
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1859
    .local v3, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    move-result v6

    .local v6, "marker":B
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1860
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid marker: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    and-int/lit16 v9, v6, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1977
    .end local v6    # "marker":B
    :catchall_0
    move-exception v7

    move-object v2, v3

    .line 1979
    .end local v3    # "dataInputStream":Ljava/io/DataInputStream;
    :goto_0
    if-eqz v2, :cond_1

    sget-boolean v8, Landroid/media/ExifInterface;->m_Is_Raw_Input_Stream:Z

    if-eqz v8, :cond_1

    .line 1980
    sget-boolean v8, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "ExifInterface"

    const-string/jumbo v9, "getJpegAttributes: Closing dataInputStream."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1977
    :cond_1
    throw v7

    .line 1862
    .restart local v3    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v6    # "marker":B
    :cond_2
    const/4 v1, 0x1

    .line 1863
    .local v1, "bytesRead":I
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    const/16 v8, -0x28

    if-eq v7, v8, :cond_3

    .line 1864
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid marker: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    and-int/lit16 v9, v6, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1866
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 1868
    :goto_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 1869
    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 1870
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid marker:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    and-int/lit16 v9, v6, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1872
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 1873
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 1877
    add-int/lit8 v1, v1, 0x1

    .line 1881
    const/16 v7, -0x27

    if-eq v6, v7, :cond_5

    const/16 v7, -0x26

    if-ne v6, v7, :cond_8

    .line 1979
    :cond_5
    if-eqz v3, :cond_7

    sget-boolean v7, Landroid/media/ExifInterface;->m_Is_Raw_Input_Stream:Z

    if-eqz v7, :cond_7

    .line 1980
    sget-boolean v7, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "ExifInterface"

    const-string/jumbo v8, "getJpegAttributes: Closing dataInputStream."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_6
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1847
    :cond_7
    return-void

    .line 1884
    :cond_8
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    add-int/lit8 v5, v7, -0x2

    .line 1885
    .local v5, "length":I
    add-int/lit8 v1, v1, 0x2

    .line 1890
    if-gez v5, :cond_9

    .line 1891
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1893
    :cond_9
    sparse-switch v6, :sswitch_data_0

    .line 1969
    :cond_a
    :goto_2
    if-gez v5, :cond_10

    .line 1970
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1898
    :sswitch_0
    const/4 v7, 0x6

    if-lt v5, v7, :cond_a

    .line 1902
    const/4 v7, 0x6

    new-array v4, v7, [B

    .line 1903
    .local v4, "identifier":[B
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_b

    .line 1904
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid exif"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1906
    :cond_b
    add-int/lit8 v1, v1, 0x6

    .line 1907
    add-int/lit8 v5, v5, -0x6

    .line 1908
    sget-object v7, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1912
    if-gtz v5, :cond_c

    .line 1913
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid exif"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1918
    :cond_c
    new-array v0, v5, [B

    .line 1919
    .local v0, "bytes":[B
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    if-eq v7, v5, :cond_d

    .line 1920
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid exif"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1922
    :cond_d
    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 1923
    add-int/2addr v1, v5

    .line 1924
    const/4 v5, 0x0

    .line 1925
    goto :goto_2

    .line 1929
    .end local v0    # "bytes":[B
    .end local v4    # "identifier":[B
    :sswitch_1
    new-array v0, v5, [B

    .line 1930
    .restart local v0    # "bytes":[B
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    if-eq v7, v5, :cond_e

    .line 1931
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid exif"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1933
    :cond_e
    const/4 v5, 0x0

    .line 1934
    const-string/jumbo v7, "UserComment"

    invoke-virtual {p0, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    .line 1935
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string/jumbo v8, "UserComment"

    .line 1936
    new-instance v9, Ljava/lang/String;

    sget-object v10, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1935
    invoke-static {v9}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1954
    .end local v0    # "bytes":[B
    :sswitch_2
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_f

    .line 1955
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid SOFx"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1957
    :cond_f
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-string/jumbo v8, "ImageLength"

    .line 1958
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    int-to-long v10, v9

    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1957
    invoke-static {v10, v11, v9}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-string/jumbo v8, "ImageWidth"

    .line 1960
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    int-to-long v10, v9

    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1959
    invoke-static {v10, v11, v9}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    add-int/lit8 v5, v5, -0x5

    .line 1962
    goto/16 :goto_2

    .line 1972
    :cond_10
    invoke-virtual {v3, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v7

    if-eq v7, v5, :cond_11

    .line 1973
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid JPEG segment"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1975
    :cond_11
    add-int/2addr v1, v5

    goto/16 :goto_1

    .line 1977
    .end local v1    # "bytesRead":I
    .end local v3    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v5    # "length":I
    .end local v6    # "marker":B
    .restart local v2    # "dataInputStream":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v7

    goto/16 :goto_0

    .line 1893
    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_2
        -0x3f -> :sswitch_2
        -0x3e -> :sswitch_2
        -0x3d -> :sswitch_2
        -0x3b -> :sswitch_2
        -0x3a -> :sswitch_2
        -0x39 -> :sswitch_2
        -0x37 -> :sswitch_2
        -0x36 -> :sswitch_2
        -0x35 -> :sswitch_2
        -0x33 -> :sswitch_2
        -0x32 -> :sswitch_2
        -0x31 -> :sswitch_2
        -0x1f -> :sswitch_0
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 20
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2557
    const-string/jumbo v15, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 2558
    const-string/jumbo v15, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2559
    .local v6, "entryValues":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-static {v15}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 2560
    .local v2, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 2561
    return-object v2

    .line 2563
    :cond_0
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    array-length v15, v6

    if-ge v9, v15, :cond_8

    .line 2564
    aget-object v15, v6, v9

    invoke-static {v15}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 2565
    .local v8, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, -0x1

    .local v7, "first":I
    const/4 v14, -0x1

    .line 2566
    .local v14, "second":I
    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 2567
    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 2568
    :cond_1
    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2570
    :cond_2
    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 2571
    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 2572
    :cond_3
    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2574
    :cond_4
    const/4 v15, -0x1

    if-ne v7, v15, :cond_5

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    .line 2575
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 2577
    :cond_5
    const/4 v15, -0x1

    if-ne v7, v15, :cond_7

    .line 2578
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2563
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2581
    :cond_7
    const/4 v15, -0x1

    if-ne v14, v15, :cond_6

    .line 2582
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2583
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 2586
    .end local v7    # "first":I
    .end local v8    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "second":I
    :cond_8
    return-object v2

    .line 2589
    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "entryValues":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_9
    const-string/jumbo v15, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 2590
    const-string/jumbo v15, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2591
    .local v11, "rationalNumber":[Ljava/lang/String;
    array-length v15, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 2593
    const/4 v15, 0x0

    :try_start_0
    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 2594
    .local v12, "numerator":J
    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2595
    .local v4, "denominator":J
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-ltz v15, :cond_a

    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gez v15, :cond_b

    .line 2596
    :cond_a
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 2598
    :cond_b
    const-wide/32 v16, 0x7fffffff

    cmp-long v15, v12, v16

    if-gtz v15, :cond_c

    const-wide/32 v16, 0x7fffffff

    cmp-long v15, v4, v16

    if-lez v15, :cond_d

    .line 2599
    :cond_c
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 2601
    :cond_d
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v15

    .line 2602
    .end local v4    # "denominator":J
    .end local v12    # "numerator":J
    :catch_0
    move-exception v3

    .line 2606
    :cond_e
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 2609
    .end local v11    # "rationalNumber":[Ljava/lang/String;
    :cond_f
    :try_start_1
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2610
    .local v10, "longValue":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-ltz v15, :cond_10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/32 v18, 0xffff

    cmp-long v15, v16, v18

    if-gtz v15, :cond_10

    .line 2611
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 2613
    :cond_10
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-gez v15, :cond_11

    .line 2614
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 2616
    :cond_11
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v15

    .line 2617
    .end local v10    # "longValue":Ljava/lang/Long;
    :catch_1
    move-exception v3

    .line 2621
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2622
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0xc

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v15

    .line 2623
    :catch_2
    move-exception v3

    .line 2626
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15
.end method

.method private handleRawResult(Ljava/util/HashMap;)Z
    .locals 6
    .param p1, "map"    # Ljava/util/HashMap;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1526
    if-nez p1, :cond_0

    .line 1527
    return v3

    .line 1531
    :cond_0
    iput-boolean v5, p0, Landroid/media/ExifInterface;->mIsRaw:Z

    .line 1533
    const-string/jumbo v4, "HasThumbnail"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1534
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    :cond_1
    iput-boolean v3, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 1535
    const-string/jumbo v3, "ThumbnailOffset"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "value":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1536
    .restart local v2    # "value":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1537
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 1539
    :cond_2
    const-string/jumbo v3, "ThumbnailLength"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "value":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1540
    .restart local v2    # "value":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1541
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 1543
    :cond_3
    const-string/jumbo v3, "ThumbnailData"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 1545
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1546
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1549
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_4
    return v5
.end method

.method private static isJpegInputStream(Ljava/io/BufferedInputStream;)Z
    .locals 4
    .param p0, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 1515
    invoke-virtual {p0, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 1516
    new-array v1, v3, [B

    .line 1517
    .local v1, "signatureBytes":[B
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 1518
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 1520
    :cond_0
    sget-object v2, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 1521
    .local v0, "isJpeg":Z
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 1522
    return v0
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1554
    const-wide/16 v2, 0x0

    :try_start_0
    sget v1, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    const/4 v1, 0x1

    return v1

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return v1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1458
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v5, v7, :cond_0

    .line 1459
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    aput-object v8, v7, v5

    .line 1458
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1463
    :cond_0
    const/4 v7, 0x1

    sput-boolean v7, Landroid/media/ExifInterface;->m_Is_Raw_Input_Stream:Z

    .line 1467
    iget-object v7, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v7, :cond_1

    .line 1468
    iget-object v7, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v7}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v2

    .line 1469
    .local v2, "asset":J
    invoke-static {v2, v3}, Landroid/media/ExifInterface;->nativeGetRawAttributesFromAsset(J)Ljava/util/HashMap;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->handleRawResult(Ljava/util/HashMap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 1506
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1470
    return-void

    .line 1472
    .end local v2    # "asset":J
    :cond_1
    :try_start_1
    iget-object v7, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v7, :cond_2

    .line 1474
    iget-object v7, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1473
    invoke-static {v7}, Landroid/media/ExifInterface;->nativeGetRawAttributesFromFileDescriptor(Ljava/io/FileDescriptor;)Ljava/util/HashMap;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->handleRawResult(Ljava/util/HashMap;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 1506
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1475
    return-void

    .line 1478
    :cond_2
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    const/4 v7, 0x3

    invoke-direct {v6, p1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1479
    .end local p1    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    :try_start_3
    move-object v0, v6

    check-cast v0, Ljava/io/BufferedInputStream;

    move-object v7, v0

    invoke-static {v7}, Landroid/media/ExifInterface;->isJpegInputStream(Ljava/io/BufferedInputStream;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1480
    invoke-static {v6}, Landroid/media/ExifInterface;->nativeGetRawAttributesFromInputStream(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v7

    .line 1479
    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->handleRawResult(Ljava/util/HashMap;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v7

    if-eqz v7, :cond_6

    .line 1506
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1481
    return-void

    :cond_3
    move-object p1, v6

    .line 1486
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    :cond_4
    :goto_1
    const/4 v7, 0x0

    :try_start_4
    sput-boolean v7, Landroid/media/ExifInterface;->m_Is_Raw_Input_Stream:Z

    .line 1490
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getJpegAttributes(Ljava/io/InputStream;)V

    .line 1491
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1506
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1455
    :goto_2
    return-void

    .line 1492
    :catch_0
    move-exception v4

    .line 1495
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    const/4 v7, 0x0

    :try_start_5
    iput-boolean v7, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    .line 1496
    sget-boolean v7, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_5

    .line 1497
    const-string/jumbo v7, "ExifInterface"

    const-string/jumbo v8, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1506
    :goto_4
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    goto :goto_2

    .line 1501
    :cond_5
    :try_start_6
    const-string/jumbo v7, "ExifInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 1505
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1506
    :goto_5
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1505
    throw v7

    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object p1, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    goto :goto_5

    .line 1492
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object p1, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v4    # "e":Ljava/io/IOException;
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :cond_6
    move-object p1, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static native nativeGetRawAttributesFromAsset(J)Ljava/util/HashMap;
.end method

.method private static native nativeGetRawAttributesFromFileDescriptor(Ljava/io/FileDescriptor;)Ljava/util/HashMap;
.end method

.method private static native nativeGetRawAttributesFromInputStream(Ljava/io/InputStream;)Ljava/util/HashMap;
.end method

.method private static native nativeGetThumbnailFromAsset(JII)[B
.end method

.method private static native nativeInitRaw()V
.end method

.method private printAttributes()V
    .locals 7

    .prologue
    .line 1563
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 1564
    const-string/jumbo v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The size of tag group["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1566
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 1567
    .local v3, "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    const-string/jumbo v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1568
    const-string/jumbo v6, ", tagValue: \'"

    .line 1567
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1568
    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    .line 1567
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1568
    const-string/jumbo v6, "\'"

    .line 1567
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1563
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1562
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private readExifSegment([BI)V
    .locals 14
    .param p1, "exifBytes"    # [B
    .param p2, "exifOffsetFromBeginning"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2106
    new-instance v1, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;-><init>([B)V

    .line 2109
    .local v1, "dataInputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v0

    .line 2110
    .local v0, "byteOrder":S
    sparse-switch v0, :sswitch_data_0

    .line 2124
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid byte order: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2115
    :sswitch_0
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v11, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2128
    :goto_0
    iget-object v11, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2130
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 2131
    .local v9, "startCode":I
    const/16 v11, 0x2a

    if-eq v9, v11, :cond_0

    .line 2132
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid exif start: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2121
    .end local v9    # "startCode":I
    :sswitch_1
    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v11, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 2136
    .restart local v9    # "startCode":I
    :cond_0
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 2137
    .local v4, "firstIfdOffset":J
    const-wide/16 v12, 0x8

    cmp-long v11, v4, v12

    if-ltz v11, :cond_1

    array-length v11, p1

    int-to-long v12, v11

    cmp-long v11, v4, v12

    if-ltz v11, :cond_2

    .line 2138
    :cond_1
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid first Ifd offset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2140
    :cond_2
    const-wide/16 v12, 0x8

    sub-long/2addr v4, v12

    .line 2141
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-lez v11, :cond_3

    .line 2142
    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->skip(J)J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-eqz v11, :cond_3

    .line 2143
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2148
    :cond_3
    const/4 v11, 0x0

    invoke-direct {p0, v1, v11}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V

    .line 2151
    sget-object v11, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    iget-object v11, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {p0, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2153
    .local v8, "jpegInterchangeFormatString":Ljava/lang/String;
    sget-object v11, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    iget-object v11, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {p0, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2154
    .local v7, "jpegInterchangeFormatLengthString":Ljava/lang/String;
    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    .line 2156
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2157
    .local v3, "jpegInterchangeFormat":I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2160
    .local v6, "jpegInterchangeFormatLength":I
    add-int v11, v3, v6

    .line 2161
    array-length v12, p1

    .line 2160
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v6, v11, v3

    .line 2162
    if-lez v3, :cond_4

    if-lez v6, :cond_4

    .line 2163
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 2164
    add-int v11, p2, v3

    iput v11, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 2165
    iput v6, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 2167
    iget-object v11, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v11, :cond_4

    iget-object v11, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v11, :cond_4

    .line 2168
    iget-object v11, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v11, :cond_4

    .line 2170
    new-array v10, v6, [B

    .line 2171
    .local v10, "thumbnailBytes":[B
    int-to-long v12, v3

    invoke-virtual {v1, v12, v13}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 2172
    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFully([B)V

    .line 2173
    iput-object v10, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2103
    .end local v3    # "jpegInterchangeFormat":I
    .end local v6    # "jpegInterchangeFormatLength":I
    .end local v10    # "thumbnailBytes":[B
    :cond_4
    :goto_1
    return-void

    .line 2185
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 2110
    nop

    :sswitch_data_0
    .sparse-switch
        0x4949 -> :sswitch_0
        0x4d4d -> :sswitch_1
    .end sparse-switch
.end method

.method private readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V
    .locals 26
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    .param p2, "hint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2221
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v22

    const-wide/16 v24, 0x2

    add-long v22, v22, v24

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-lez v21, :cond_0

    .line 2223
    return-void

    .line 2226
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v15

    .line 2227
    .local v15, "numberOfDirectoryEntry":S
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v22

    mul-int/lit8 v21, v15, 0xc

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-lez v21, :cond_1

    .line 2229
    return-void

    .line 2234
    :cond_1
    if-gtz v15, :cond_3

    .line 2235
    sget-boolean v21, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v21, :cond_2

    const-string/jumbo v21, "ExifInterface"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readImageFileDirectory return on numberOfDirectoryEntry = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_2
    return-void

    .line 2244
    :cond_3
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v15, :cond_f

    .line 2245
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v19

    .line 2246
    .local v19, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v7

    .line 2247
    .local v7, "dataFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v14

    .line 2248
    .local v14, "numberOfComponents":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v22

    const-wide/16 v24, 0x4

    add-long v10, v22, v24

    .line 2251
    .local v10, "nextEntryOffset":J
    sget-object v21, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v21, v21, p2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/media/ExifInterface$ExifTag;

    .line 2259
    .local v18, "tag":Landroid/media/ExifInterface$ExifTag;
    const-wide/16 v4, 0x0

    .line 2260
    .local v4, "byteCount":J
    const/16 v20, 0x0

    .line 2261
    .local v20, "valid":Z
    if-nez v18, :cond_5

    .line 2262
    const-string/jumbo v21, "ExifInterface"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Skip the tag entry since tag number is not defined: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :goto_1
    if-nez v20, :cond_a

    .line 2275
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 2244
    :cond_4
    :goto_2
    add-int/lit8 v21, v8, 0x1

    move/from16 v0, v21

    int-to-short v8, v0

    .local v8, "i":S
    goto :goto_0

    .line 2263
    .end local v8    # "i":S
    :cond_5
    if-lez v7, :cond_6

    sget-object v21, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v7, v0, :cond_7

    .line 2264
    :cond_6
    const-string/jumbo v21, "ExifInterface"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Skip the tag entry since data format is invalid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2266
    :cond_7
    int-to-long v0, v14

    move-wide/from16 v22, v0

    sget-object v21, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v21, v21, v7

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v4, v22, v24

    .line 2267
    const-wide/16 v22, 0x0

    cmp-long v21, v4, v22

    if-ltz v21, :cond_8

    const-wide/32 v22, 0x7fffffff

    cmp-long v21, v4, v22

    if-lez v21, :cond_9

    .line 2268
    :cond_8
    const-string/jumbo v21, "ExifInterface"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Skip the tag entry since number of components is invalid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2271
    :cond_9
    const/16 v20, 0x1

    goto :goto_1

    .line 2281
    :cond_a
    const-wide/16 v22, 0x4

    cmp-long v21, v4, v22

    if-lez v21, :cond_b

    .line 2282
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v16

    .line 2286
    .local v16, "offset":J
    add-long v22, v16, v4

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-gtz v21, :cond_c

    .line 2287
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 2297
    .end local v16    # "offset":J
    :cond_b
    invoke-static/range {v19 .. v19}, Landroid/media/ExifInterface;->getIfdHintFromTagNumber(I)I

    move-result v9

    .line 2302
    .local v9, "innerIfdHint":I
    if-ltz v9, :cond_e

    .line 2303
    const-wide/16 v16, -0x1

    .line 2305
    .restart local v16    # "offset":J
    packed-switch v7, :pswitch_data_0

    .line 2330
    :goto_3
    :pswitch_0
    const-wide/16 v22, 0x0

    cmp-long v21, v16, v22

    if-lez v21, :cond_d

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v22

    cmp-long v21, v16, v22

    if-gez v21, :cond_d

    .line 2331
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 2332
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V

    .line 2337
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    goto/16 :goto_2

    .line 2290
    .end local v9    # "innerIfdHint":I
    :cond_c
    const-string/jumbo v21, "ExifInterface"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Skip the tag entry since data offset is invalid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    goto/16 :goto_2

    .line 2307
    .restart local v9    # "innerIfdHint":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 2308
    goto :goto_3

    .line 2311
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 2312
    goto :goto_3

    .line 2315
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v16

    goto :goto_3

    .line 2319
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 2320
    goto :goto_3

    .line 2334
    :cond_d
    const-string/jumbo v21, "ExifInterface"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2341
    .end local v16    # "offset":J
    :cond_e
    sget-object v21, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v21, v21, v7

    mul-int v21, v21, v14

    move/from16 v0, v21

    new-array v6, v0, [B

    .line 2342
    .local v6, "bytes":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFully([B)V

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, p2

    .line 2344
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v7, v14, v6, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[BLandroid/media/ExifInterface$ExifAttribute;)V

    .line 2343
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2345
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v22

    cmp-long v21, v22, v10

    if-eqz v21, :cond_4

    .line 2346
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    goto/16 :goto_2

    .line 2350
    .end local v4    # "byteCount":J
    .end local v6    # "bytes":[B
    .end local v7    # "dataFormat":I
    .end local v9    # "innerIfdHint":I
    .end local v10    # "nextEntryOffset":J
    .end local v14    # "numberOfComponents":I
    .end local v18    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v19    # "tagNumber":I
    .end local v20    # "valid":Z
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v22

    const-wide/16 v24, 0x4

    add-long v22, v22, v24

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-gtz v21, :cond_10

    .line 2351
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v12

    .line 2357
    .local v12, "nextIfdOffset":J
    const-wide/16 v22, 0x8

    cmp-long v21, v12, v22

    if-lez v21, :cond_10

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v22

    cmp-long v21, v12, v22

    if-gez v21, :cond_10

    .line 2358
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 2359
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V

    .line 2220
    .end local v12    # "nextIfdOffset":J
    :cond_10
    return-void

    .line 2305
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1446
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1444
    :cond_0
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 16
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1998
    const/4 v3, 0x0

    .line 1999
    .local v3, "dataInputStream":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 2001
    .local v5, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2003
    .local v4, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v6, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;

    .end local v3    # "dataInputStream":Ljava/io/DataInputStream;
    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p2

    invoke-direct {v6, v0, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2004
    .local v6, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .end local v5    # "dataOutputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 2005
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Invalid marker"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2089
    :catchall_0
    move-exception v11

    move-object v5, v6

    .end local v6    # "dataOutputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    .local v5, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    move-object v3, v4

    .line 2090
    .end local v4    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v5    # "dataOutputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    :goto_0
    if-eqz v3, :cond_1

    .line 2091
    sget-boolean v12, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_0

    const-string/jumbo v12, "ExifInterface"

    const-string/jumbo v13, "saveJpegAttributes: Closing dataInputStream."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_0
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2094
    :cond_1
    if-eqz v5, :cond_3

    .line 2095
    sget-boolean v12, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_2

    const-string/jumbo v12, "ExifInterface"

    const-string/jumbo v13, "saveJpegAttributes: Closing dataOutputStream."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :cond_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2089
    :cond_3
    throw v11

    .line 2007
    .restart local v4    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v6    # "dataOutputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    :cond_4
    const/4 v11, -0x1

    :try_start_3
    invoke-virtual {v6, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2008
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    const/16 v12, -0x28

    if-eq v11, v12, :cond_5

    .line 2009
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Invalid marker"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2011
    :cond_5
    const/16 v11, -0x28

    invoke-virtual {v6, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2014
    const/4 v11, -0x1

    invoke-virtual {v6, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2015
    const/16 v11, -0x1f

    invoke-virtual {v6, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2016
    const/4 v11, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;I)I

    .line 2018
    const/16 v11, 0x1000

    new-array v2, v11, [B

    .line 2021
    .local v2, "bytes":[B
    :cond_6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 2022
    .local v9, "marker":B
    const/4 v11, -0x1

    if-eq v9, v11, :cond_7

    .line 2023
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Invalid marker"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2025
    :cond_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 2026
    sparse-switch v9, :sswitch_data_0

    .line 2071
    const/4 v11, -0x1

    invoke-virtual {v6, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2072
    invoke-virtual {v6, v9}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2073
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    .line 2074
    .local v8, "length":I
    invoke-virtual {v6, v8}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2075
    add-int/lit8 v8, v8, -0x2

    .line 2076
    if-gez v8, :cond_10

    .line 2077
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Invalid length"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2028
    .end local v8    # "length":I
    :sswitch_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v11

    add-int/lit8 v8, v11, -0x2

    .line 2029
    .restart local v8    # "length":I
    if-gez v8, :cond_8

    .line 2030
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Invalid length"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2032
    :cond_8
    const/4 v11, 0x6

    new-array v7, v11, [B

    .line 2033
    .local v7, "identifier":[B
    const/4 v11, 0x6

    if-lt v8, v11, :cond_a

    .line 2034
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->read([B)I

    move-result v11

    const/4 v12, 0x6

    if-eq v11, v12, :cond_9

    .line 2035
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Invalid exif"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2037
    :cond_9
    sget-object v11, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v7, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2039
    add-int/lit8 v11, v8, -0x6

    int-to-long v12, v11

    invoke-virtual {v4, v12, v13}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v12

    add-int/lit8 v11, v8, -0x6

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-eqz v11, :cond_6

    .line 2040
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Invalid length"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2046
    :cond_a
    const/4 v11, -0x1

    invoke-virtual {v6, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2047
    invoke-virtual {v6, v9}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2048
    add-int/lit8 v11, v8, 0x2

    invoke-virtual {v6, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2049
    const/4 v11, 0x6

    if-lt v8, v11, :cond_b

    .line 2050
    add-int/lit8 v8, v8, -0x6

    .line 2051
    invoke-virtual {v6, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    .line 2054
    :cond_b
    :goto_1
    if-lez v8, :cond_6

    .line 2055
    array-length v11, v2

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    .line 2054
    invoke-virtual {v4, v2, v12, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v10

    .local v10, "read":I
    if-ltz v10, :cond_6

    .line 2056
    const/4 v11, 0x0

    invoke-virtual {v6, v2, v11, v10}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([BII)V

    .line 2057
    sub-int/2addr v8, v10

    goto :goto_1

    .line 2063
    .end local v7    # "identifier":[B
    .end local v8    # "length":I
    .end local v10    # "read":I
    :sswitch_1
    const/4 v11, -0x1

    invoke-virtual {v6, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2064
    invoke-virtual {v6, v9}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2066
    invoke-static {v4, v6}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2090
    if-eqz v4, :cond_d

    .line 2091
    sget-boolean v11, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_c

    const-string/jumbo v11, "ExifInterface"

    const-string/jumbo v12, "saveJpegAttributes: Closing dataInputStream."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_c
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2094
    :cond_d
    if-eqz v6, :cond_f

    .line 2095
    sget-boolean v11, Landroid/media/ExifInterface;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_e

    const-string/jumbo v11, "ExifInterface"

    const-string/jumbo v12, "saveJpegAttributes: Closing dataOutputStream."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :cond_e
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2067
    :cond_f
    return-void

    .line 2080
    .restart local v8    # "length":I
    :cond_10
    :goto_2
    if-lez v8, :cond_6

    .line 2081
    :try_start_4
    array-length v11, v2

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    .line 2080
    invoke-virtual {v4, v2, v12, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v10

    .restart local v10    # "read":I
    if-ltz v10, :cond_6

    .line 2082
    const/4 v11, 0x0

    invoke-virtual {v6, v2, v11, v10}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2083
    sub-int/2addr v8, v10

    goto :goto_2

    .line 2089
    .end local v2    # "bytes":[B
    .end local v4    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v6    # "dataOutputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    .end local v8    # "length":I
    .end local v9    # "marker":B
    .end local v10    # "read":I
    .restart local v3    # "dataInputStream":Ljava/io/DataInputStream;
    .local v5, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    :catchall_1
    move-exception v11

    goto/16 :goto_0

    .end local v3    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v4    # "dataInputStream":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "dataInputStream":Ljava/io/DataInputStream;
    .local v3, "dataInputStream":Ljava/io/DataInputStream;
    goto/16 :goto_0

    .line 2026
    nop

    :sswitch_data_0
    .sparse-switch
        -0x27 -> :sswitch_1
        -0x26 -> :sswitch_1
        -0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/media/ExifInterface$ExifAttribute;

    .prologue
    .line 1429
    const/4 v1, 0x0

    .line 1430
    .local v1, "updated":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1431
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1432
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    const/4 v1, 0x1

    .line 1430
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1436
    :cond_1
    return v1
.end method

.method private writeExifSegment(Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;I)I
    .locals 26
    .param p1, "dataOutputStream"    # Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    .param p2, "exifOffsetFromBeginning"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2378
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v12, v0, [I

    .line 2379
    .local v12, "ifdOffsets":[I
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v11, v0, [I

    .line 2382
    .local v11, "ifdDataSizes":[I
    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v21, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v17, v22, v21

    .line 2383
    .local v17, "tag":Landroid/media/ExifInterface$ExifTag;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 2382
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 2386
    .end local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_0
    sget-object v21, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 2387
    sget-object v21, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 2390
    const/4 v9, 0x0

    .local v9, "hint":I
    :goto_1
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_3

    .line 2391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v22

    const/16 v21, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v13, v22, v21

    .local v13, "obj":Ljava/lang/Object;
    move-object v6, v13

    .line 2392
    check-cast v6, Ljava/util/Map$Entry;

    .line 2393
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_1

    .line 2394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v24, v0

    aget-object v24, v24, v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2391
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 2390
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "obj":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2401
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_4

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2403
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2402
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2405
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_5

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2407
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2406
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2409
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_6

    .line 2410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2411
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2410
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 2414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2415
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2414
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2417
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2416
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2422
    :cond_7
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_a

    .line 2423
    const/16 v16, 0x0

    .line 2424
    .local v16, "sum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "entry$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2425
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    .line 2426
    .local v8, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v8}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    .line 2427
    .local v15, "size":I
    const/16 v21, 0x4

    move/from16 v0, v21

    if-le v15, v0, :cond_8

    .line 2428
    add-int v16, v16, v15

    goto :goto_4

    .line 2431
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "size":I
    :cond_9
    aget v21, v11, v10

    add-int v21, v21, v16

    aput v21, v11, v10

    .line 2422
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2435
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "sum":I
    :cond_a
    const/16 v14, 0x8

    .line 2436
    .local v14, "position":I
    const/4 v9, 0x0

    :goto_5
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_c

    .line 2437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_b

    .line 2438
    aput v14, v12, v9

    .line 2439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    mul-int/lit8 v21, v21, 0xc

    add-int/lit8 v21, v21, 0x2

    add-int/lit8 v21, v21, 0x4

    aget v22, v11, v9

    add-int v21, v21, v22

    add-int v14, v14, v21

    .line 2436
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2442
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 2443
    move/from16 v19, v14

    .line 2444
    .local v19, "thumbnailOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2445
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2444
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2446
    add-int v21, p2, v19

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 2447
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    move/from16 v21, v0

    add-int v14, v14, v21

    .line 2451
    .end local v19    # "thumbnailOffset":I
    :cond_d
    add-int/lit8 v20, v14, 0x8

    .line 2461
    .local v20, "totalSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_e

    .line 2462
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2463
    const/16 v23, 0x1

    aget v23, v12, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2462
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_f

    .line 2466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2467
    const/16 v23, 0x2

    aget v23, v12, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2466
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2469
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_10

    .line 2470
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2471
    const/16 v23, 0x3

    aget v23, v12, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    .line 2470
    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2475
    :cond_10
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2476
    sget-object v21, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v21, v0

    sget-object v22, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 2478
    const/16 v21, 0x4d4d

    .line 2477
    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeShort(S)V

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2480
    const/16 v21, 0x2a

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2481
    const-wide/16 v22, 0x8

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    .line 2484
    const/4 v9, 0x0

    :goto_7
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_19

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_18

    .line 2488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2491
    aget v21, v12, v9

    add-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    mul-int/lit8 v22, v22, 0xc

    add-int v21, v21, v22

    add-int/lit8 v5, v21, 0x4

    .line 2492
    .local v5, "dataOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "entry$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2494
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    sget-object v21, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v21, v21, v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/ExifInterface$ExifTag;

    .line 2495
    .restart local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/ExifInterface$ExifTag;->number:I

    move/from16 v18, v0

    .line 2496
    .local v18, "tagNumber":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2497
    .local v4, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v4}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    .line 2499
    .restart local v15    # "size":I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2500
    iget v0, v4, Landroid/media/ExifInterface$ExifAttribute;->format:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2501
    iget v0, v4, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeInt(I)V

    .line 2502
    const/16 v21, 0x4

    move/from16 v0, v21

    if-le v15, v0, :cond_13

    .line 2503
    int-to-long v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    .line 2504
    add-int/2addr v5, v15

    goto :goto_8

    .line 2478
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "dataOffset":I
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    .end local v15    # "size":I
    .end local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v18    # "tagNumber":I
    :cond_12
    const/16 v21, 0x4949

    goto/16 :goto_6

    .line 2506
    .restart local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v5    # "dataOffset":I
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    .restart local v7    # "entry$iterator":Ljava/util/Iterator;
    .restart local v15    # "size":I
    .restart local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v18    # "tagNumber":I
    :cond_13
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    .line 2508
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v15, v0, :cond_11

    .line 2509
    move v10, v15

    :goto_9
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v10, v0, :cond_11

    .line 2510
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2509
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 2519
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v15    # "size":I
    .end local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v18    # "tagNumber":I
    :cond_14
    if-nez v9, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_17

    .line 2522
    :cond_15
    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    .line 2526
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2527
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2529
    .restart local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_16

    .line 2530
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v21, v0

    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([BII)V

    goto :goto_b

    .line 2520
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v6    # "entry":Ljava/util/Map$Entry;
    :cond_17
    const/16 v21, 0x4

    aget v21, v12, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    goto :goto_a

    .line 2484
    .end local v5    # "dataOffset":I
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 2537
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 2538
    invoke-virtual/range {p0 .. p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    .line 2542
    :cond_1a
    sget-object v21, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2544
    return v20
.end method


# virtual methods
.method public getAltitude(D)D
    .locals 9
    .param p1, "defaultValue"    # D

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1746
    const-string/jumbo v5, "GPSAltitude"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 1747
    .local v0, "altitude":D
    const-string/jumbo v5, "GPSAltitudeRef"

    invoke-virtual {p0, v5, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 1749
    .local v2, "ref":I
    const-wide/16 v6, 0x0

    cmpl-double v5, v0, v6

    if-ltz v5, :cond_1

    if-ltz v2, :cond_1

    .line 1750
    if-ne v2, v4, :cond_0

    :goto_0
    int-to-double v4, v3

    mul-double/2addr v4, v0

    return-wide v4

    :cond_0
    move v3, v4

    goto :goto_0

    .line 1752
    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 1209
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 1210
    .local v1, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_4

    .line 1211
    sget-object v3, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1212
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1214
    :cond_0
    const-string/jumbo v3, "GPSTimeStamp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1216
    iget v3, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 1217
    iget v3, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 1218
    return-object v6

    .line 1220
    :cond_1
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/ExifInterface$Rational;

    .line 1221
    .local v0, "array":[Landroid/media/ExifInterface$Rational;
    array-length v3, v0

    if-eq v3, v5, :cond_2

    .line 1222
    return-object v6

    .line 1224
    :cond_2
    const-string/jumbo v3, "%02d:%02d:%02d"

    new-array v4, v5, [Ljava/lang/Object;

    .line 1225
    aget-object v5, v0, v8

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v8

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1226
    aget-object v5, v0, v9

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v9

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1227
    aget-object v5, v0, v10

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v10

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    .line 1224
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1230
    .end local v0    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1231
    :catch_0
    move-exception v2

    .line 1232
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v6

    .line 1235
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    return-object v6
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 1268
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 1269
    .local v1, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v1, :cond_0

    .line 1270
    return-wide p2

    .line 1274
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1275
    :catch_0
    move-exception v0

    .line 1276
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 1247
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 1248
    .local v1, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v1, :cond_0

    .line 1249
    return p2

    .line 1253
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public getDateTime()J
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    .line 1762
    const-string/jumbo v10, "DateTime"

    invoke-virtual {p0, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    .local v0, "dateTimeString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1764
    sget-object v10, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1766
    new-instance v6, Ljava/text/ParsePosition;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1770
    .local v6, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v10, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 1771
    .local v1, "datetime":Ljava/util/Date;
    if-nez v1, :cond_1

    return-wide v12

    .line 1764
    .end local v1    # "datetime":Ljava/util/Date;
    .end local v6    # "pos":Ljava/text/ParsePosition;
    :cond_0
    return-wide v12

    .line 1772
    .restart local v1    # "datetime":Ljava/util/Date;
    .restart local v6    # "pos":Ljava/text/ParsePosition;
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1774
    .local v4, "msecs":J
    const-string/jumbo v10, "SubSecTime"

    invoke-virtual {p0, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1775
    .local v7, "subSecs":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1777
    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1778
    .local v8, "sub":J
    :goto_0
    const-wide/16 v10, 0x3e8

    cmp-long v10, v8, v10

    if-lez v10, :cond_2

    .line 1779
    const-wide/16 v10, 0xa

    div-long/2addr v8, v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1781
    :cond_2
    add-long/2addr v4, v8

    .line 1786
    .end local v8    # "sub":J
    :cond_3
    :goto_1
    return-wide v4

    .line 1787
    .end local v1    # "datetime":Ljava/util/Date;
    .end local v4    # "msecs":J
    .end local v7    # "subSecs":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1788
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return-wide v12

    .line 1782
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "datetime":Ljava/util/Date;
    .restart local v4    # "msecs":J
    .restart local v7    # "subSecs":Ljava/lang/String;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method public getGpsDateTime()J
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 1798
    const-string/jumbo v6, "GPSDateStamp"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1799
    .local v0, "date":Ljava/lang/String;
    const-string/jumbo v6, "GPSTimeStamp"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1800
    .local v5, "time":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v5, :cond_1

    .line 1803
    :cond_0
    return-wide v8

    .line 1801
    :cond_1
    sget-object v6, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1802
    sget-object v6, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1806
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1808
    .local v1, "dateTimeString":Ljava/lang/String;
    new-instance v4, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1810
    .local v4, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 1811
    .local v2, "datetime":Ljava/util/Date;
    if-nez v2, :cond_3

    return-wide v8

    .line 1812
    :cond_3
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    return-wide v6

    .line 1813
    .end local v2    # "datetime":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 1814
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return-wide v8
.end method

.method public getLatLong([F)Z
    .locals 9
    .param p1, "output"    # [F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1721
    const-string/jumbo v5, "GPSLatitude"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1722
    .local v2, "latValue":Ljava/lang/String;
    const-string/jumbo v5, "GPSLatitudeRef"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1723
    .local v1, "latRef":Ljava/lang/String;
    const-string/jumbo v5, "GPSLongitude"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1724
    .local v4, "lngValue":Ljava/lang/String;
    const-string/jumbo v5, "GPSLongitudeRef"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1726
    .local v3, "lngRef":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1728
    :try_start_0
    invoke-static {v2, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x0

    aput v5, p1, v6

    .line 1729
    invoke-static {v4, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    aput v5, p1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1730
    return v8

    .line 1731
    :catch_0
    move-exception v0

    .line 1736
    :cond_0
    return v7
.end method

.method public getThumbnail()[B
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1656
    iget-boolean v5, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v5, :cond_0

    .line 1657
    return-object v10

    .line 1659
    :cond_0
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v5, :cond_1

    .line 1660
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    return-object v5

    .line 1664
    :cond_1
    const/4 v3, 0x0

    .line 1666
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v5, :cond_2

    .line 1668
    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v5}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v6

    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    iget v8, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 1667
    invoke-static {v6, v7, v5, v8}, Landroid/media/ExifInterface;->nativeGetThumbnailFromAsset(JII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1691
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1667
    return-object v5

    .line 1669
    :cond_2
    :try_start_1
    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1670
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v4, "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 1676
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/FileInputStream;
    :cond_3
    :goto_0
    if-nez v3, :cond_5

    .line 1678
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1688
    :catch_0
    move-exception v1

    .line 1691
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1693
    return-object v10

    .line 1671
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :cond_4
    :try_start_2
    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v5, :cond_3

    .line 1672
    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1673
    .local v2, "fileDescriptor":Ljava/io/FileDescriptor;
    const-wide/16 v6, 0x0

    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v2, v6, v7, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 1674
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .restart local v4    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1680
    .end local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v3    # "in":Ljava/io/FileInputStream;
    :cond_5
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v6

    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-eqz v5, :cond_6

    .line 1681
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Corrupted image"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1690
    :catchall_0
    move-exception v5

    .line 1691
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1690
    throw v5

    .line 1683
    :cond_6
    :try_start_3
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    new-array v0, v5, [B

    .line 1684
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    iget v6, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    if-eq v5, v6, :cond_7

    .line 1685
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Corrupted image"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1691
    :cond_7
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1687
    return-object v0
.end method

.method public getThumbnailRange()[J
    .locals 4

    .prologue
    .line 1704
    iget-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v1, :cond_0

    .line 1705
    const/4 v1, 0x0

    return-object v1

    .line 1708
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [J

    .line 1709
    .local v0, "range":[J
    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v1

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 1710
    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 1712
    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 1647
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public saveAttributes()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1583
    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsRaw:Z

    if-eqz v8, :cond_1

    .line 1584
    :cond_0
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1586
    :cond_1
    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v8, :cond_3

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1587
    :cond_2
    new-instance v8, Ljava/io/IOException;

    .line 1588
    const-string/jumbo v9, "ExifInterface does not support saving attributes for the current input."

    .line 1587
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1592
    :cond_3
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v8

    iput-object v8, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 1594
    const/4 v1, 0x0

    .line 1595
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1596
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 1599
    .local v6, "tempFile":Ljava/io/File;
    :try_start_0
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 1600
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1601
    .end local v6    # "tempFile":Ljava/io/File;
    .local v7, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1602
    .local v3, "originalFile":Ljava/io/File;
    invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1603
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could\'nt rename to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1612
    .end local v3    # "originalFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/system/ErrnoException;
    move-object v6, v7

    .line 1613
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "tempFile":Ljava/io/File;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v8

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1614
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v8

    .line 1615
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1616
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1614
    throw v8

    .line 1605
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "tempFile":Ljava/io/File;
    :cond_4
    :try_start_3
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v8, :cond_5

    .line 1606
    const-string/jumbo v8, "temp"

    const-string/jumbo v9, "jpg"

    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1607
    .local v6, "tempFile":Ljava/io/File;
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    const-wide/16 v10, 0x0

    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v8, v10, v11, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 1608
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1609
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v1    # "in":Ljava/io/FileInputStream;
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1610
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-static {v2, v5}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .end local v4    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 1615
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "tempFile":Ljava/io/File;
    :cond_5
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1616
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1619
    const/4 v1, 0x0

    .line 1620
    .restart local v1    # "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1623
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1624
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :try_start_7
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 1625
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .restart local v5    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 1630
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_6
    :goto_3
    invoke-direct {p0, v2, v4}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1634
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1635
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1636
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1640
    iput-object v12, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 1582
    return-void

    .line 1626
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_7
    :try_start_8
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v8, :cond_6

    .line 1627
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    const-wide/16 v10, 0x0

    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v8, v10, v11, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 1628
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .restart local v5    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1631
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 1632
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Landroid/system/ErrnoException;
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v8

    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1633
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catchall_1
    move-exception v8

    .line 1634
    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1635
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1636
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1633
    throw v8

    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1631
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/system/ErrnoException;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1614
    .end local v0    # "e":Landroid/system/ErrnoException;
    .local v1, "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "tempFile":Ljava/io/File;
    :catchall_3
    move-exception v8

    move-object v6, v7

    .end local v7    # "tempFile":Ljava/io/File;
    .restart local v6    # "tempFile":Ljava/io/File;
    goto/16 :goto_1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_4
    move-exception v8

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1612
    .end local v6    # "tempFile":Ljava/io/File;
    .local v1, "in":Ljava/io/FileInputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Landroid/system/ErrnoException;
    goto/16 :goto_0

    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "tempFile":Ljava/io/File;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Landroid/system/ErrnoException;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Landroid/system/ErrnoException;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v6    # "tempFile":Ljava/io/File;
    .local v1, "in":Ljava/io/FileInputStream;
    .restart local v3    # "originalFile":Ljava/io/File;
    .local v4, "out":Ljava/io/FileOutputStream;
    .restart local v7    # "tempFile":Ljava/io/File;
    :cond_8
    move-object v6, v7

    .end local v7    # "tempFile":Ljava/io/File;
    .restart local v6    # "tempFile":Ljava/io/File;
    goto :goto_2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1288
    if-eqz p2, :cond_1

    sget-object v3, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1289
    const-string/jumbo v3, "GPSTimeStamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1290
    sget-object v3, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 1291
    .local v19, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1292
    const-string/jumbo v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    return-void

    .line 1295
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1296
    const/4 v4, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1295
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1296
    const-string/jumbo v4, "/1"

    .line 1295
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1308
    .end local v19    # "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    if-ge v15, v3, :cond_14

    .line 1309
    const/4 v3, 0x4

    if-ne v15, v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v3, :cond_3

    .line 1312
    :cond_2
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1313
    .local v21, "obj":Ljava/lang/Object;
    if-eqz v21, :cond_3

    .line 1314
    if-nez p2, :cond_5

    .line 1315
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    .end local v21    # "obj":Ljava/lang/Object;
    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1299
    .end local v15    # "i":I
    :cond_4
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 1300
    .local v10, "doubleValue":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v10

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/10000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 1301
    .end local v10    # "doubleValue":D
    :catch_0
    move-exception v12

    .line 1302
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    return-void

    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "i":I
    .restart local v21    # "obj":Ljava/lang/Object;
    :cond_5
    move-object/from16 v13, v21

    .line 1318
    check-cast v13, Landroid/media/ExifInterface$ExifTag;

    .line 1319
    .local v13, "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    .line 1321
    .local v14, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_6

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_7

    .line 1322
    :cond_6
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 1339
    .local v2, "dataFormat":I
    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 1414
    :pswitch_0
    const-string/jumbo v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Data format isn\'t one of expected formats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1323
    .end local v2    # "dataFormat":I
    :cond_7
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_8

    .line 1324
    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_9

    .line 1325
    :cond_8
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .restart local v2    # "dataFormat":I
    goto :goto_3

    .line 1326
    .end local v2    # "dataFormat":I
    :cond_9
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    .line 1327
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_b

    .line 1329
    :cond_a
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .restart local v2    # "dataFormat":I
    goto :goto_3

    .line 1328
    .end local v2    # "dataFormat":I
    :cond_b
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    .line 1331
    const-string/jumbo v4, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Given tag ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ") value didn\'t match with one of expected "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1332
    const-string/jumbo v5, "formats: "

    .line 1331
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1332
    sget-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v6, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v5, v5, v6

    .line 1331
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1333
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_c

    const-string/jumbo v3, ""

    .line 1331
    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1334
    const-string/jumbo v5, " (guess: "

    .line 1331
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1335
    sget-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v6, v3

    .line 1331
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1335
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_d

    const-string/jumbo v3, ""

    .line 1331
    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1336
    const-string/jumbo v5, ")"

    .line 1331
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1333
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1334
    sget-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v7, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v6, v6, v7

    .line 1333
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 1335
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1336
    sget-object v7, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v7, v3

    .line 1335
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 1341
    .restart local v2    # "dataFormat":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1346
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1350
    :pswitch_3
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1351
    .local v23, "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 1352
    .local v16, "intArray":[I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_6
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_e

    .line 1353
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v16, v17

    .line 1352
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1355
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1356
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1355
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1360
    .end local v16    # "intArray":[I
    .end local v17    # "j":I
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1361
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 1362
    .restart local v16    # "intArray":[I
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_7
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_f

    .line 1363
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v16, v17

    .line 1362
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1365
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1366
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1365
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1370
    .end local v16    # "intArray":[I
    .end local v17    # "j":I
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1371
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [J

    move-object/from16 v18, v0

    .line 1372
    .local v18, "longArray":[J
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_8
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_10

    .line 1373
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v18, v17

    .line 1372
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 1375
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1376
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1375
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1380
    .end local v17    # "j":I
    .end local v18    # "longArray":[J
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1381
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v22, v0

    .line 1382
    .local v22, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_9
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_11

    .line 1383
    aget-object v3, v23, v17

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1384
    .local v20, "numbers":[Ljava/lang/String;
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1385
    const/4 v6, 0x1

    aget-object v6, v20, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1384
    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v22, v17

    .line 1382
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 1387
    .end local v20    # "numbers":[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1388
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1387
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1392
    .end local v17    # "j":I
    .end local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1393
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v22, v0

    .line 1394
    .restart local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_a
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_12

    .line 1395
    aget-object v3, v23, v17

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1396
    .restart local v20    # "numbers":[Ljava/lang/String;
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1397
    const/4 v6, 0x1

    aget-object v6, v20, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1396
    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v22, v17

    .line 1394
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 1399
    .end local v20    # "numbers":[Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1400
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1399
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1404
    .end local v17    # "j":I
    .end local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1405
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v9, v3, [D

    .line 1406
    .local v9, "doubleArray":[D
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_b
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_13

    .line 1407
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v9, v17

    .line 1406
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 1409
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1410
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v4}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1409
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1286
    .end local v2    # "dataFormat":I
    .end local v9    # "doubleArray":[D
    .end local v13    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .end local v14    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v17    # "j":I
    .end local v21    # "obj":Ljava/lang/Object;
    .end local v23    # "values":[Ljava/lang/String;
    :cond_14
    return-void

    .line 1339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
